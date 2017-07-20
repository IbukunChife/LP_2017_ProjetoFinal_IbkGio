require 'net/http'
require 'uri'
require 'json'

uri = URI.parse('https://sandbox-api.uber.com/v1/estimates/price')

@Capital = ['RIO BRANCO - AC','MANAUS - AM','MACAPA - AP','BELEM - PA','PORTO VELHO - RO','BOA VISTA - RR',
'PALMAS - TO','MACEIO - AL','SALVADOR - BA','FORTALEZA - CE','SAO LUIS - MA',
'JOAO PESSOA - PB','RECIFE - PE','TERESINA - PI','NATAL - RN','ARACAJU - SE',
'BRASILIA - DF','GOIANIA - GO','CAMPO GRANDE - MS','CUIABA - MT','VITORIA - ES',
'BELO HORIZONTE - MG','SAO PAULO - SP','RIO DE JANEIRO - RJ','CURITIBA - PR',
'FLORIANOPOLIS - SC','PORTO ALEGRE - RS']
@Sigla = ['AC','AM','AP','PA','RO','RR','TO','AL','BA','CE','MA','PB','PE',
'PI','RN','SE','DF','GO','MS','MT','ES','MG','SP','RJ','PR','SC','RS']
@MenorD = [] #array das distancias para determinar a menor distancia
@MenorE = [] #array dos precos das corridas para determinar o menor preco
@me= 0			#variavel para pegar o indice da menor distancia
for i in (0...@Sigla.size)
		@Tipo = []	#tipo de carro do Uber
		@Dist = []	#distancia da corrida
		@Tempo = []	#tempo da corrida
		@Valor = []	#preco da corrida
		@cont1=0	#contador uberX/UberX
		@cont2=0	#contador SELECT/uberSELECT/UberSELECT
		@cont3=0	#contador uberblack/UberBlack/UberBLACK
		@cont4=0	#contador uberbag/UberBAG
		@cont5=0	#contador uberXBAG
		@cont6=0	#contador uberBIKE
		parameters = {
		  :server_token => ENV['UBER_SERVER_TOKEN'],				#UBER_SERVER_TOKEN - arquivo .env3 que esta na pasta trabalho_versao4
		  :start_latitude => ENV["UBER_"+"#{@Sigla[i]}"+"_LAT"],	#latitude incial - arquivo .env3 que esta na pasta trabalho_versao4
		  :start_longitude => ENV["UBER_"+"#{@Sigla[i]}"+"_LON"],	#longitude inicial - arquivo .env3 que esta na pasta trabalho_versao4
		  :end_latitude => ENV["UBER_"+"#{@Sigla[i]}"+"_AERO_LAT"],	#latitude final - arquivo .env3 que esta na pasta trabalho_versao4
		  :end_longitude => ENV["UBER_"+"#{@Sigla[i]}"+"_AERO_LON"]	#longitude final - arquivo .env3 que esta na pasta trabalho_versao4
		}

		uri.query = URI.encode_www_form( parameters )

		response = Net::HTTP.get( uri )

		parsed=JSON.parse( response )

		#Tipo de carro - display_name
		parsed["prices"].each do |prices|
			@Tipo << prices["display_name"]
		end

		#Distância da corrida - distance
		parsed["prices"].each do |prices|
			@Dist << prices["distance"]
			@MenorD << prices["distance"]
		end

		#Duração da corrida - duration
		parsed["prices"].each do |prices|
			@Tempo << prices["duration"]
		end

		#Valor da corrida - estimate
		parsed["prices"].each do |prices|
			@Valor << prices["estimate"]
			@MenorE << prices["estimate"] 
		end

		#imprimir quantidade de carros

		for j in (0...@Tipo.size)
			if ((@Tipo[j]== "uberX") || (@Tipo[j]== "UberX"))
				@cont1 += 1
			elsif ((@Tipo[j]== "SELECT") || (@Tipo[j]== "uberSELECT") || (@Tipo[j]== "UberSELECT"))
				@cont2 += 1
			elsif ((@Tipo[j]== "uberblack") || (@Tipo[j]== "UberBlack") || (@Tipo[j]== "UberBLACK"))
				@cont3 += 1
			elsif ((@Tipo[j]== "uberbag") || (@Tipo[j]== "UberBAG"))
				@cont4 += 1
			elsif @Tipo[j]== "uberXBAG"
				@cont5 += 1	
			else
				@cont6 += 1	
			end
		end

		puts "O número de Uber em "+"#{@Capital[i]}"+" é: #{@Tipo.size}"
		puts "sendo #{@cont1} UberX, #{@cont2} UberSELECT, #{@cont3} UberBLACK, #{@cont4} UberBAG, #{@cont5} UberXBAG, #{@cont6} UberBIKE"
		if ((@cont1==0) && (@cont2==0) && (@cont3==0) && (@cont4==0) && (@cont5==0) && (@cont6==0))
			puts "Não foram encontrados dados do aplicativo na cidade de "+"#{@Capital[i]}"
		else
			puts "A corrida do centro de "+"#{@Capital[i]}"+" até o AEROPORTO tem distância de "+format("%.2f",(@Dist[0]*1.60934))+" km e duração de #{(@Tempo[0]/60)} minutos"
		#imprimir o preço da corrida ate o aeroporto
			for k in (0...@Tipo.size)
				if ((@Tipo[k]== "uberX") || (@Tipo[k]== "UberX"))
					puts "O valor da corrida de UberX varia entre: #{@Valor[k]}"
				elsif ((@Tipo[k]== "SELECT") || (@Tipo[k]== "uberSELECT") || (@Tipo[k]== "UberSELECT"))
					puts "O valor da corrida de UberSELECT varia entre: #{@Valor[k]}"
				elsif ((@Tipo[k]== "uberblack") || (@Tipo[k]== "UberBlack") || (@Tipo[k]== "UberBLACK"))
					puts "O valor da corrida de UberBLACK varia entre: #{@Valor[k]}"
				elsif ((@Tipo[k]== "uberbag") || (@Tipo[k]== "UberBAG"))
					puts "O valor da corrida de UberBAG varia entre: #{@Valor[k]}"
				elsif @Tipo[k]== "uberXBAG"
					puts "O valor da corrida de UberXBAG varia entre: #{@Valor[k]}"	
				else
					puts "O valor da corrida de UberBIKE varia entre: #{@Valor[k]}"	
				end
			end
		end
		puts "\n\n"
end

#Determinacao do menor preco da corrida no array @MenorD
for i in (0...@MenorD.size)
	if (@MenorD[i] == @MenorD.min)
		@me = i
		break
	end
end

puts "#{@Capital[@me]}"+" possui a corrida de Uber do centro para o Aeroporto mais barata, que custa #{@MenorE[@me]}"
puts "\n"
