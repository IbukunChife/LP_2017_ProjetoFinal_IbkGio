require 'net/http'
require 'uri'
require 'json'



@S1 = []
@cont1=0
@cont2=0
@cont3=0

puts "SAO PAULO"

uri = URI.parse('https://sandbox-api.uber.com/v1/products')

parameters = {
  :server_token => ENV['UBER_SERVER_TOKEN'],
  :latitude => -23.6821591,
  :longitude => -46.8761801
}

uri.query = URI.encode_www_form( parameters )

response = Net::HTTP.get( uri )

parsed=JSON.parse( response )
# imprimir o numéro de caros 
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

puts " o numero de Taxi Uber em SaoPaulo é: #{@S1.size}"
puts " o numero de Taxi UberX : #{@cont1}"
puts " o numero de Taxi UberBlack: #{@cont2}"
puts " o numero de Taxi Uber Pool: #{@cont3}"



=begin
#imprimir o numemo de caro UberBlack
parsed["products"].each do |products|
	@S1 << products["capacity"]
end
#imprimir o numemo de caro Pool
parsed["products"].each do |products|
	@S1 << products["capacity"]
end
=end

#puts JSON.pretty_generate( JSON.parse( response ) )
=begin

print" RIO DE JANEIRO"

uri = URI.parse('https://sandbox-api.uber.com/v1/products')

parameters = {
  :server_token => ENV['UBER_SERVER_TOKEN'],
  :latitude => -22.9111718,
  :longitude => -43.5887637
}

uri.query = URI.encode_www_form( parameters )

response = Net::HTTP.get( uri )

puts JSON.pretty_generate( JSON.parse( response ) )
=end
