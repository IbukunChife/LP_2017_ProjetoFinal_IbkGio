require 'net/http'
require 'uri'
require 'json'

n=0
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

parsed["products"].each do |products|
	if( products["capacity"] == true)
		n = n +1 
	end
end
 
 puts n
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
