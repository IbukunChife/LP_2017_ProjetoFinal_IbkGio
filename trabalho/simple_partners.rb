require 'net/http'
require 'uri'
require 'json'


uri = URI.parse('https://sandbox-api.uber.com/v1/partners/me')
uri = URI.parse('https://login.uber.com/oauth/v2/authorize')
  
parameters = {
#  :authorizationBearer => ENV['UBER_SERVER_TOKEN']
  :server_token => ENV['UBER_SERVER_TOKEN'],
  :latitude => -23.6821591,
  :longitude => -46.8761801
}

uri.query = URI.encode_www_form( parameters )

response = Net::HTTP.get( uri )

puts JSON.pretty_generate( JSON.parse( response ) )
	
