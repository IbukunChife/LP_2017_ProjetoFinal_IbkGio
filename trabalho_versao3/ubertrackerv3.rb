require 'net/http'
require 'uri'
require 'json'

uri_pro = URI.parse('https://sandbox-api.uber.com/v1/products')
uri_pri = URI.parse('https://sandbox-api.uber.com/v1/estimates/price')

@Capital = ['RIO BRANCO - AC','MANAUS - AM','MACAPA - AP','BELEM - PA','PORTO VELHO - RO','BOA VISTA - RR',
'PALMAS - TO','MACEIO - AL','SALVADOR - BA','FORTALEZA - CE','SAO LUIS - MA',
'JOAO PESSOA - PB','RECIFE - PE','TERESINA - PI','NATAL - RN','ARACAJU - SE',
'BRASILIA - DF','GOIANIA - GO','CAMPO GRANDE - MS','CUIABA - MT','VITORIA - ES',
'BELO HORIZONTE - MG','SAO PAULO - SP','RIO DE JANEIRO - RJ','CURITIBA - PR',
'FLORIANOPOLIS - SC','PORTO ALEGRE - RS']
@Sigla = ['AC','AM','AP','PA','RO','RR','TO','AL','BA','CE','MA','PB','PE',
'PI','RN','SE','DF','GO','MS','MT','ES','MG','SP','RJ','PR','SC','RS']

for i in (0...@Sigla.size)
		@S1 = []
		@Tipo = []
		@Dist = []
		@Tempo = []
		@Valor = []
		@cont1=0
		@cont2=0
		@cont3=0
		parameters = {
		  :server_token => ENV['UBER_SERVER_TOKEN'],
		  :latitude => ENV["UBER_"+"#{@Sigla[i]}"+"_LAT"],
		  :longitude => ENV["UBER_"+"#{@Sigla[i]}"+"_LON"],
		  :start_latitude => ENV["UBER_"+"#{@Sigla[i]}"+"_LAT"],
		  :start_longitude => ENV["UBER_"+"#{@Sigla[i]}"+"_LON"],
		  :end_latitude => ENV["UBER_"+"#{@Sigla[i]}"+"_AERO_LAT"],
		  :end_longitude => ENV["UBER_"+"#{@Sigla[i]}"+"_AERO_LON"]
		}

		uri_pro.query = URI.encode_www_form( parameters )
		uri_pri.query = URI.encode_www_form( parameters )

		response_pro = Net::HTTP.get( uri_pro )
		response_pri = Net::HTTP.get( uri_pri )

		#puts JSON.pretty_generate( JSON.parse( response_pro ) )
		#puts JSON.pretty_generate( JSON.parse( response_pri ) )

		parsed_pro=JSON.parse( response_pro )
		parsed_pri=JSON.parse( response_pri )


		parsed_pro["products"].each do |products|
			@S1 << products["product_group"]
		end

		#Tipo de carro - display_name
		parsed_pri["prices"].each do |prices|
			@Tipo << prices["display_name"]
		end

		#Distância da corrida - distance
		parsed_pri["prices"].each do |prices|
			@Dist << prices["distance"]
		end

		#Duração da corrida - duration
		parsed_pri["prices"].each do |prices|
			@Tempo << prices["duration"]
		end

		#Valor da corrida - estimate
		parsed_pri["prices"].each do |prices|
			@Valor << prices["estimate"]
		end

		#imprimir quantidade de carros

		for j in (0...@S1.size)
			if @S1[j]== "uberx"
				@cont1 += 1
			elsif @S1[j]== "uberblack" 
				@cont2 += 1
			else 
				@cont3 += 1
			end
		end

		puts "O número de Uber em "+"#{@Capital[i]}"+" é: #{@S1.size}"
		puts "sendo #{@cont1} UberX, #{@cont2} UberBlack e #{@cont3} UberPool"
		if ((@cont1==0) && (@cont2==0) && (@cont3==0))
			puts "Não foram encontrados dados do aplicativo na cidade de "+"#{@Capital[i]}"
		else
			puts "A corrida do centro de "+"#{@Capital[i]}"+" até o AEROPORTO tem distância de "+format("%.2f",(@Dist[0]*1.60934))+" km e duração de #{(@Tempo[0]/60)} minutos"
			#imprimir o preço da corrida até o aeroporto
			for k in (0...@Tipo.size)
				if @Tipo[k]== "uberX"
					puts "O valor da corrida de UberX varia entre: #{@Valor[k]}"
					else if @Tipo[k]== "UberBLACK" 
						puts "O valor da corrida de UberBLACK varia entre: #{@Valor[k]}"
						else if @Tipo[k]== "POOL" 
							puts "O valor da corrida de UberPOOL varia entre: #{@Valor[k]}"
							end
						end
				end
			end
		end
		puts "\n\n"
end
