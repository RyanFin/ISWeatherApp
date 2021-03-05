require 'net/http'
require 'json'

class WeatherData
  # Add accessibility to attributes
  attr_reader :postcode

  # initialize instance variables
  def initialize(postcode)
    @postcode = postcode
  end

  uri = URI('http://api.weatherapi.com/v1/forecast.json')

  params = {:key => 'd1d165c764064cec9ce73314211502', :q => 'UB3 3EX', :days => 0}

  uri.query = URI.encode_www_form(params)

  res = Net::HTTP.get(uri)
  # puts res.body if res.is_a?(Net::HTTPSuccess)

  puts JSON.parse(res)
end
