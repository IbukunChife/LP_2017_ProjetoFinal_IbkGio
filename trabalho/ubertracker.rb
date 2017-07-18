require 'net/http'
require 'uri'
require 'json'

uri = URI.parse('https://sandbox-api.uber.com/v1/products')

#AC
@S1 = []
@cont1=0
@cont2=0
@cont3=0

parameters = {
  :server_token => ENV['UBER_SERVER_TOKEN'],
  :latitude => ENV['UBER_AC_LAT'],
  :longitude => ENV['UBER_AC_LON']
}

uri.query = URI.encode_www_form( parameters )

response = Net::HTTP.get( uri )

parsed=JSON.parse( response )
# imprimir o numéro de carros 
parsed["products"].each do |products|
	@S1 << products["product_group"]
end

for i in (0...@S1.size)
	if @S1[i]== "uberx"
		@cont1 += 1
	elsif @S1[i]== "uberblack" 
		@cont2 += 1
	else 
		@cont3 += 1
	end
end

puts "O número de Uber em RIO BRANCO - AC é: #{@S1.size}"
puts "sendo #{@cont1} UberX, #{@cont2} UberBlack e #{@cont3} UberPool"
puts "\n"

#AM
@S1 = []
@cont1=0
@cont2=0
@cont3=0

parameters = {
  :server_token => ENV['UBER_SERVER_TOKEN'],
  :latitude => ENV['UBER_AM_LAT'],
  :longitude => ENV['UBER_AM_LON']
}

uri.query = URI.encode_www_form( parameters )

response = Net::HTTP.get( uri )

parsed=JSON.parse( response )
# imprimir o numéro de carros 
parsed["products"].each do |products|
	@S1 << products["product_group"]
end

for i in (0...@S1.size)
	if @S1[i]== "uberx"
		@cont1 += 1
	elsif @S1[i]== "uberblack" 
		@cont2 += 1
	else 
		@cont3 += 1
	end
end

puts "O número de Uber em MANAUS - AM é: #{@S1.size}"
puts "sendo #{@cont1} UberX, #{@cont2} UberBlack e #{@cont3} UberPool"
puts "\n"

#AP
@S1 = []
@cont1=0
@cont2=0
@cont3=0

parameters = {
  :server_token => ENV['UBER_SERVER_TOKEN'],
  :latitude => ENV['UBER_AP_LAT'],
  :longitude => ENV['UBER_AP_LON']
}

uri.query = URI.encode_www_form( parameters )

response = Net::HTTP.get( uri )

parsed=JSON.parse( response )
# imprimir o numéro de carros 
parsed["products"].each do |products|
	@S1 << products["product_group"]
end

for i in (0...@S1.size)
	if @S1[i]== "uberx"
		@cont1 += 1
	elsif @S1[i]== "uberblack" 
		@cont2 += 1
	else 
		@cont3 += 1
	end
end

puts "O número de Uber em MACAPÁ - AP é: #{@S1.size}"
puts "sendo #{@cont1} UberX, #{@cont2} UberBlack e #{@cont3} UberPool"
puts "\n"

#PA
@S1 = []
@cont1=0
@cont2=0
@cont3=0

parameters = {
  :server_token => ENV['UBER_SERVER_TOKEN'],
  :latitude => ENV['UBER_PA_LAT'],
  :longitude => ENV['UBER_PA_LON']
}

uri.query = URI.encode_www_form( parameters )

response = Net::HTTP.get( uri )

parsed=JSON.parse( response )
# imprimir o numéro de carros 
parsed["products"].each do |products|
	@S1 << products["product_group"]
end

for i in (0...@S1.size)
	if @S1[i]== "uberx"
		@cont1 += 1
	elsif @S1[i]== "uberblack" 
		@cont2 += 1
	else 
		@cont3 += 1
	end
end

puts "O número de Uber em BELÉM - PA é: #{@S1.size}"
puts "sendo #{@cont1} UberX, #{@cont2} UberBlack e #{@cont3} UberPool"
puts "\n"

#RO
@S1 = []
@cont1=0
@cont2=0
@cont3=0

parameters = {
  :server_token => ENV['UBER_SERVER_TOKEN'],
  :latitude => ENV['UBER_RO_LAT'],
  :longitude => ENV['UBER_RO_LON']
}

uri.query = URI.encode_www_form( parameters )

response = Net::HTTP.get( uri )

parsed=JSON.parse( response )
# imprimir o numéro de carros 
parsed["products"].each do |products|
	@S1 << products["product_group"]
end

for i in (0...@S1.size)
	if @S1[i]== "uberx"
		@cont1 += 1
	elsif @S1[i]== "uberblack" 
		@cont2 += 1
	else 
		@cont3 += 1
	end
end

puts "O número de Uber em PORTO VELHO - RO é: #{@S1.size}"
puts "sendo #{@cont1} UberX, #{@cont2} UberBlack e #{@cont3} UberPool"
puts "\n"

#RR
@S1 = []
@cont1=0
@cont2=0
@cont3=0

parameters = {
  :server_token => ENV['UBER_SERVER_TOKEN'],
  :latitude => ENV['UBER_RR_LAT'],
  :longitude => ENV['UBER_RR_LON']
}

uri.query = URI.encode_www_form( parameters )

response = Net::HTTP.get( uri )

parsed=JSON.parse( response )
# imprimir o numéro de carros 
parsed["products"].each do |products|
	@S1 << products["product_group"]
end

for i in (0...@S1.size)
	if @S1[i]== "uberx"
		@cont1 += 1
	elsif @S1[i]== "uberblack" 
		@cont2 += 1
	else 
		@cont3 += 1
	end
end

puts "O número de Uber em BOA VISTA - RR é: #{@S1.size}"
puts "sendo #{@cont1} UberX, #{@cont2} UberBlack e #{@cont3} UberPool"
puts "\n"

#TO
@S1 = []
@cont1=0
@cont2=0
@cont3=0

parameters = {
  :server_token => ENV['UBER_SERVER_TOKEN'],
  :latitude => ENV['UBER_TO_LAT'],
  :longitude => ENV['UBER_TO_LON']
}

uri.query = URI.encode_www_form( parameters )

response = Net::HTTP.get( uri )

parsed=JSON.parse( response )
# imprimir o numéro de carros 
parsed["products"].each do |products|
	@S1 << products["product_group"]
end

for i in (0...@S1.size)
	if @S1[i]== "uberx"
		@cont1 += 1
	elsif @S1[i]== "uberblack" 
		@cont2 += 1
	else 
		@cont3 += 1
	end
end

puts "O número de Uber em PALMAS - TO é: #{@S1.size}"
puts "sendo #{@cont1} UberX, #{@cont2} UberBlack e #{@cont3} UberPool"
puts "\n"

#AL
@S1 = []
@cont1=0
@cont2=0
@cont3=0

parameters = {
  :server_token => ENV['UBER_SERVER_TOKEN'],
  :latitude => ENV['UBER_AL_LAT'],
  :longitude => ENV['UBER_AL_LON']
}

uri.query = URI.encode_www_form( parameters )

response = Net::HTTP.get( uri )

parsed=JSON.parse( response )
# imprimir o numéro de carros 
parsed["products"].each do |products|
	@S1 << products["product_group"]
end

for i in (0...@S1.size)
	if @S1[i]== "uberx"
		@cont1 += 1
	elsif @S1[i]== "uberblack" 
		@cont2 += 1
	else 
		@cont3 += 1
	end
end

puts "O número de Uber em MACEIÓ - AL é: #{@S1.size}"
puts "sendo #{@cont1} UberX, #{@cont2} UberBlack e #{@cont3} UberPool"
puts "\n"

#BA
@S1 = []
@cont1=0
@cont2=0
@cont3=0

parameters = {
  :server_token => ENV['UBER_SERVER_TOKEN'],
  :latitude => ENV['UBER_BA_LAT'],
  :longitude => ENV['UBER_BA_LON']
}

uri.query = URI.encode_www_form( parameters )

response = Net::HTTP.get( uri )

parsed=JSON.parse( response )
# imprimir o numéro de carros 
parsed["products"].each do |products|
	@S1 << products["product_group"]
end

for i in (0...@S1.size)
	if @S1[i]== "uberx"
		@cont1 += 1
	elsif @S1[i]== "uberblack" 
		@cont2 += 1
	else 
		@cont3 += 1
	end
end

puts "O número de Uber em SALVADOR - BA é: #{@S1.size}"
puts "sendo #{@cont1} UberX, #{@cont2} UberBlack e #{@cont3} UberPool"
puts "\n"

#CE
@S1 = []
@cont1=0
@cont2=0
@cont3=0

parameters = {
  :server_token => ENV['UBER_SERVER_TOKEN'],
  :latitude => ENV['UBER_CE_LAT'],
  :longitude => ENV['UBER_CE_LON']
}

uri.query = URI.encode_www_form( parameters )

response = Net::HTTP.get( uri )

parsed=JSON.parse( response )
# imprimir o numéro de carros 
parsed["products"].each do |products|
	@S1 << products["product_group"]
end

for i in (0...@S1.size)
	if @S1[i]== "uberx"
		@cont1 += 1
	elsif @S1[i]== "uberblack" 
		@cont2 += 1
	else 
		@cont3 += 1
	end
end

puts "O número de Uber em FORTALEZA - CE é: #{@S1.size}"
puts "sendo #{@cont1} UberX, #{@cont2} UberBlack e #{@cont3} UberPool"
puts "\n"

#MA
@S1 = []
@cont1=0
@cont2=0
@cont3=0

parameters = {
  :server_token => ENV['UBER_SERVER_TOKEN'],
  :latitude => ENV['UBER_MA_LAT'],
  :longitude => ENV['UBER_MA_LON']
}

uri.query = URI.encode_www_form( parameters )

response = Net::HTTP.get( uri )

parsed=JSON.parse( response )
# imprimir o numéro de carros 
parsed["products"].each do |products|
	@S1 << products["product_group"]
end

for i in (0...@S1.size)
	if @S1[i]== "uberx"
		@cont1 += 1
	elsif @S1[i]== "uberblack" 
		@cont2 += 1
	else 
		@cont3 += 1
	end
end

puts "O número de Uber em SÃO LUIS - MA é: #{@S1.size}"
puts "sendo #{@cont1} UberX, #{@cont2} UberBlack e #{@cont3} UberPool"
puts "\n"

#PB
@S1 = []
@cont1=0
@cont2=0
@cont3=0

parameters = {
  :server_token => ENV['UBER_SERVER_TOKEN'],
  :latitude => ENV['UBER_PB_LAT'],
  :longitude => ENV['UBER_PB_LON']
}

uri.query = URI.encode_www_form( parameters )

response = Net::HTTP.get( uri )

parsed=JSON.parse( response )
# imprimir o numéro de carros 
parsed["products"].each do |products|
	@S1 << products["product_group"]
end

for i in (0...@S1.size)
	if @S1[i]== "uberx"
		@cont1 += 1
	elsif @S1[i]== "uberblack" 
		@cont2 += 1
	else 
		@cont3 += 1
	end
end

puts "O número de Uber em JOÃO PESSOA - PB é: #{@S1.size}"
puts "sendo #{@cont1} UberX, #{@cont2} UberBlack e #{@cont3} UberPool"
puts "\n"

#PE
@S1 = []
@cont1=0
@cont2=0
@cont3=0

parameters = {
  :server_token => ENV['UBER_SERVER_TOKEN'],
  :latitude => ENV['UBER_PE_LAT'],
  :longitude => ENV['UBER_PE_LON']
}

uri.query = URI.encode_www_form( parameters )

response = Net::HTTP.get( uri )

parsed=JSON.parse( response )
# imprimir o numéro de carros 
parsed["products"].each do |products|
	@S1 << products["product_group"]
end

for i in (0...@S1.size)
	if @S1[i]== "uberx"
		@cont1 += 1
	elsif @S1[i]== "uberblack" 
		@cont2 += 1
	else 
		@cont3 += 1
	end
end

puts "O número de Uber em RECIFE - PE é: #{@S1.size}"
puts "sendo #{@cont1} UberX, #{@cont2} UberBlack e #{@cont3} UberPool"
puts "\n"

#PI
@S1 = []
@cont1=0
@cont2=0
@cont3=0

parameters = {
  :server_token => ENV['UBER_SERVER_TOKEN'],
  :latitude => ENV['UBER_PI_LAT'],
  :longitude => ENV['UBER_PI_LON']
}

uri.query = URI.encode_www_form( parameters )

response = Net::HTTP.get( uri )

parsed=JSON.parse( response )
# imprimir o numéro de carros 
parsed["products"].each do |products|
	@S1 << products["product_group"]
end

for i in (0...@S1.size)
	if @S1[i]== "uberx"
		@cont1 += 1
	elsif @S1[i]== "uberblack" 
		@cont2 += 1
	else 
		@cont3 += 1
	end
end

puts "O número de Uber em TERESINA - PI é: #{@S1.size}"
puts "sendo #{@cont1} UberX, #{@cont2} UberBlack e #{@cont3} UberPool"
puts "\n"

#RN
@S1 = []
@cont1=0
@cont2=0
@cont3=0

parameters = {
  :server_token => ENV['UBER_SERVER_TOKEN'],
  :latitude => ENV['UBER_RN_LAT'],
  :longitude => ENV['UBER_RN_LON']
}

uri.query = URI.encode_www_form( parameters )

response = Net::HTTP.get( uri )

parsed=JSON.parse( response )
# imprimir o numéro de carros 
parsed["products"].each do |products|
	@S1 << products["product_group"]
end

for i in (0...@S1.size)
	if @S1[i]== "uberx"
		@cont1 += 1
	elsif @S1[i]== "uberblack" 
		@cont2 += 1
	else 
		@cont3 += 1
	end
end

puts "O número de Uber em NATAL - RN é: #{@S1.size}"
puts "sendo #{@cont1} UberX, #{@cont2} UberBlack e #{@cont3} UberPool"
puts "\n"

#SE
@S1 = []
@cont1=0
@cont2=0
@cont3=0

parameters = {
  :server_token => ENV['UBER_SERVER_TOKEN'],
  :latitude => ENV['UBER_SE_LAT'],
  :longitude => ENV['UBER_SE_LON']
}

uri.query = URI.encode_www_form( parameters )

response = Net::HTTP.get( uri )

parsed=JSON.parse( response )
# imprimir o numéro de carros 
parsed["products"].each do |products|
	@S1 << products["product_group"]
end

for i in (0...@S1.size)
	if @S1[i]== "uberx"
		@cont1 += 1
	elsif @S1[i]== "uberblack" 
		@cont2 += 1
	else 
		@cont3 += 1
	end
end

puts "O número de Uber em ARACAJU - SE é: #{@S1.size}"
puts "sendo #{@cont1} UberX, #{@cont2} UberBlack e #{@cont3} UberPool"
puts "\n"

#DF
@S1 = []
@cont1=0
@cont2=0
@cont3=0

parameters = {
  :server_token => ENV['UBER_SERVER_TOKEN'],
  :latitude => ENV['UBER_DF_LAT'],
  :longitude => ENV['UBER_DF_LON']
}

uri.query = URI.encode_www_form( parameters )

response = Net::HTTP.get( uri )

parsed=JSON.parse( response )
# imprimir o numéro de carros 
parsed["products"].each do |products|
	@S1 << products["product_group"]
end

for i in (0...@S1.size)
	if @S1[i]== "uberx"
		@cont1 += 1
	elsif @S1[i]== "uberblack" 
		@cont2 += 1
	else 
		@cont3 += 1
	end
end

puts "O número de Uber em BRASÍLIA - DF é: #{@S1.size}"
puts "sendo #{@cont1} UberX, #{@cont2} UberBlack e #{@cont3} UberPool"
puts "\n"

#GO
@S1 = []
@cont1=0
@cont2=0
@cont3=0

parameters = {
  :server_token => ENV['UBER_SERVER_TOKEN'],
  :latitude => ENV['UBER_GO_LAT'],
  :longitude => ENV['UBER_GO_LON']
}

uri.query = URI.encode_www_form( parameters )

response = Net::HTTP.get( uri )

parsed=JSON.parse( response )
# imprimir o numéro de carros 
parsed["products"].each do |products|
	@S1 << products["product_group"]
end

for i in (0...@S1.size)
	if @S1[i]== "uberx"
		@cont1 += 1
	elsif @S1[i]== "uberblack" 
		@cont2 += 1
	else 
		@cont3 += 1
	end
end

puts "O número de Uber em GOIÂNIA - GO é: #{@S1.size}"
puts "sendo #{@cont1} UberX, #{@cont2} UberBlack e #{@cont3} UberPool"
puts "\n"

#MT
@S1 = []
@cont1=0
@cont2=0
@cont3=0

parameters = {
  :server_token => ENV['UBER_SERVER_TOKEN'],
  :latitude => ENV['UBER_MT_LAT'],
  :longitude => ENV['UBER_MT_LON']
}

uri.query = URI.encode_www_form( parameters )

response = Net::HTTP.get( uri )

parsed=JSON.parse( response )
# imprimir o numéro de carros 
parsed["products"].each do |products|
	@S1 << products["product_group"]
end

for i in (0...@S1.size)
	if @S1[i]== "uberx"
		@cont1 += 1
	elsif @S1[i]== "uberblack" 
		@cont2 += 1
	else 
		@cont3 += 1
	end
end

puts "O número de Uber em CUIABÁ - MT é: #{@S1.size}"
puts "sendo #{@cont1} UberX, #{@cont2} UberBlack e #{@cont3} UberPool"
puts "\n"

#MS
@S1 = []
@cont1=0
@cont2=0
@cont3=0

parameters = {
  :server_token => ENV['UBER_SERVER_TOKEN'],
  :latitude => ENV['UBER_MS_LAT'],
  :longitude => ENV['UBER_MS_LON']
}

uri.query = URI.encode_www_form( parameters )

response = Net::HTTP.get( uri )

parsed=JSON.parse( response )
# imprimir o numéro de carros 
parsed["products"].each do |products|
	@S1 << products["product_group"]
end

for i in (0...@S1.size)
	if @S1[i]== "uberx"
		@cont1 += 1
	elsif @S1[i]== "uberblack" 
		@cont2 += 1
	else 
		@cont3 += 1
	end
end

puts "O número de Uber em CAMPO GRANDE - MS é: #{@S1.size}"
puts "sendo #{@cont1} UberX, #{@cont2} UberBlack e #{@cont3} UberPool"
puts "\n"

#ES
@S1 = []
@cont1=0
@cont2=0
@cont3=0

parameters = {
  :server_token => ENV['UBER_SERVER_TOKEN'],
  :latitude => ENV['UBER_ES_LAT'],
  :longitude => ENV['UBER_ES_LON']
}

uri.query = URI.encode_www_form( parameters )

response = Net::HTTP.get( uri )

parsed=JSON.parse( response )
# imprimir o numéro de carros 
parsed["products"].each do |products|
	@S1 << products["product_group"]
end

for i in (0...@S1.size)
	if @S1[i]== "uberx"
		@cont1 += 1
	elsif @S1[i]== "uberblack" 
		@cont2 += 1
	else 
		@cont3 += 1
	end
end

puts "O número de Uber em VITÓRIA - ES é: #{@S1.size}"
puts "sendo #{@cont1} UberX, #{@cont2} UberBlack e #{@cont3} UberPool"
puts "\n"

#MG
@S1 = []
@cont1=0
@cont2=0
@cont3=0

parameters = {
  :server_token => ENV['UBER_SERVER_TOKEN'],
  :latitude => ENV['UBER_MG_LAT'],
  :longitude => ENV['UBER_MG_LON']
}

uri.query = URI.encode_www_form( parameters )

response = Net::HTTP.get( uri )

parsed=JSON.parse( response )
# imprimir o numéro de carros 
parsed["products"].each do |products|
	@S1 << products["product_group"]
end

for i in (0...@S1.size)
	if @S1[i]== "uberx"
		@cont1 += 1
	elsif @S1[i]== "uberblack" 
		@cont2 += 1
	else 
		@cont3 += 1
	end
end

puts "O número de Uber em BELO HORIZONTE - MG é: #{@S1.size}"
puts "sendo #{@cont1} UberX, #{@cont2} UberBlack e #{@cont3} UberPool"
puts "\n"

#SAO PAULO
@S1 = []
@cont1=0
@cont2=0
@cont3=0

parameters = {
  :server_token => ENV['UBER_SERVER_TOKEN'],
  :latitude => ENV['UBER_SP_LAT'],
  :longitude => ENV['UBER_SP_LON']
}

uri.query = URI.encode_www_form( parameters )

response = Net::HTTP.get( uri )

parsed=JSON.parse( response )
#puts JSON.pretty_generate( JSON.parse( response ) )
# imprimir o numéro de carros 
parsed["products"].each do |products|
	@S1 << products["product_group"]
end

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

#RJ
@S1 = []
@cont1=0
@cont2=0
@cont3=0

parameters = {
  :server_token => ENV['UBER_SERVER_TOKEN'],
  :latitude => ENV['UBER_RJ_LAT'],
  :longitude => ENV['UBER_RJ_LON']
}

uri.query = URI.encode_www_form( parameters )

response = Net::HTTP.get( uri )

parsed=JSON.parse( response )
# imprimir o numéro de carros 
parsed["products"].each do |products|
	@S1 << products["product_group"]
end

for i in (0...@S1.size)
	if @S1[i]== "uberx"
		@cont1 += 1
	elsif @S1[i]== "uberblack" 
		@cont2 += 1
	else 
		@cont3 += 1
	end
end

puts "O número de Uber em RIO DE JANEIRO - RJ é: #{@S1.size}"
puts "sendo #{@cont1} UberX, #{@cont2} UberBlack e #{@cont3} UberPool"
puts "\n"

#PR
@S1 = []
@cont1=0
@cont2=0
@cont3=0

parameters = {
  :server_token => ENV['UBER_SERVER_TOKEN'],
  :latitude => ENV['UBER_PR_LAT'],
  :longitude => ENV['UBER_PR_LON']
}

uri.query = URI.encode_www_form( parameters )

response = Net::HTTP.get( uri )

parsed=JSON.parse( response )
# imprimir o numéro de carros 
parsed["products"].each do |products|
	@S1 << products["product_group"]
end

for i in (0...@S1.size)
	if @S1[i]== "uberx"
		@cont1 += 1
	elsif @S1[i]== "uberblack" 
		@cont2 += 1
	else 
		@cont3 += 1
	end
end

puts "O número de Uber em CURITIBA - PR é: #{@S1.size}"
puts "sendo #{@cont1} UberX, #{@cont2} UberBlack e #{@cont3} UberPool"
puts "\n"

#SC
@S1 = []
@cont1=0
@cont2=0
@cont3=0

parameters = {
  :server_token => ENV['UBER_SERVER_TOKEN'],
  :latitude => ENV['UBER_SC_LAT'],
  :longitude => ENV['UBER_SC_LON']
}

uri.query = URI.encode_www_form( parameters )

response = Net::HTTP.get( uri )

parsed=JSON.parse( response )
# imprimir o numéro de carros 
parsed["products"].each do |products|
	@S1 << products["product_group"]
end

for i in (0...@S1.size)
	if @S1[i]== "uberx"
		@cont1 += 1
	elsif @S1[i]== "uberblack" 
		@cont2 += 1
	else 
		@cont3 += 1
	end
end

puts "O número de Uber em FLORIANÓPOLIS - SC é: #{@S1.size}"
puts "sendo #{@cont1} UberX, #{@cont2} UberBlack e #{@cont3} UberPool"
puts "\n"

#RS
@S1 = []
@cont1=0
@cont2=0
@cont3=0

parameters = {
  :server_token => ENV['UBER_SERVER_TOKEN'],
  :latitude => ENV['UBER_RS_LAT'],
  :longitude => ENV['UBER_RS_LON']
}

uri.query = URI.encode_www_form( parameters )

response = Net::HTTP.get( uri )

parsed=JSON.parse( response )
# imprimir o numéro de carros 
parsed["products"].each do |products|
	@S1 << products["product_group"]
end

for i in (0...@S1.size)
	if @S1[i]== "uberx"
		@cont1 += 1
	elsif @S1[i]== "uberblack" 
		@cont2 += 1
	else 
		@cont3 += 1
	end
end

puts "O número de Uber em PORTO ALEGRE - RS é: #{@S1.size}"
puts "sendo #{@cont1} UberX, #{@cont2} UberBlack e #{@cont3} UberPool"
puts "\n"
