require 'net/http'
require 'uri'
require 'json'

uri_pro = URI.parse('https://sandbox-api.uber.com/v1/products')
uri_pri = URI.parse('https://sandbox-api.uber.com/v1/estimates/price')

#SP
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
  :latitude => ENV['UBER_SP_LAT'],
  :longitude => ENV['UBER_SP_LON'],
  :start_latitude => ENV['UBER_SP_LAT'],
  :start_longitude => ENV['UBER_SP_LON'],
  :end_latitude => ENV['UBER_SP_AERO_GRU_LAT'],
  :end_longitude => ENV['UBER_SP_AERO_GRU_LON']
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

puts "A corrida do centro de SAO PAULO até o AEROPORTO DE GRU tem distância de "+format("%.2f",(@Dist[0]*1.60934))+" km e duração de #{(@Tempo[0]/60)} minutos"

#imprimir o preço da corrida até o aeroporto
for i in (0...@Tipo.size)
	if @Tipo[i]== "uberX"
		puts "O valor da corrida de UberX varia entre: #{@Valor[i]}"
		else if @Tipo[i]== "UberBLACK" 
			puts "O valor da corrida de UberBLACK varia entre: #{@Valor[i]}"
			else if @Tipo[i]== "POOL" 
				puts "O valor da corrida de UberPOOL varia entre: #{@Valor[i]}"
				end
			end
	end
end
puts "\n"

#imprimir quantidade de carros

for i in (0...@S1.size)
	if @S1[i]== "uberx"
		@cont1 += 1
	elsif @S1[i]== "uberblack" 
		@cont2 += 1
	else 
		@cont3 += 1
	end
end

puts "O número de Uber em SÃO PAULO - SP é: #{@S1.size}"
puts "sendo #{@cont1} UberX, #{@cont2} UberBlack e #{@cont3} UberPool"
puts "\n"
