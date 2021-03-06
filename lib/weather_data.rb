require 'net/http'
require 'json'
# module Services
class WeatherData
  # Add accessibility to attributes
  attr_reader :postcode

  # initialize instance variables
  def initialize(postcode)
    @postcode = postcode
  end

  def getinfojson(postcode)
    uri = URI('http://api.weatherapi.com/v1/forecast.json')

    params = {:key => 'd1d165c764064cec9ce73314211502', :q => postcode, :days => 0}

    uri.query = URI.encode_www_form(params)

    res = Net::HTTP.get(uri)

    # last evaluated line will be returned in Ruby without the need of a return statement
    # parse the JSON
    JSON.parse(res)
  end

  def gettempdata(postcode)
    if postcode != ""
    rawjsondata = getinfojson(postcode)
    unless rawjsondata  !=  nil
      puts rawjsondata.class
      # Filter to only UK post
      if rawjsondata["location"]["country"] == "UK"
        temperaturedata = rawjsondata["forecast"]["forecastday"][0]["day"]["maxtemp_c"]
      end
    end
  end
  end

  def calculatedatacategory(temperature)
    if temperature >= 18.0
      ret = "The weather is hot"
    elsif temperature >= 11.0 && temperature <= 17.0
      ret = "The weather is warm"
    else temperature < 11.0
      ret = "The weather is cold"
    end
  end
end
