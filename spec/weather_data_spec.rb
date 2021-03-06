require "weather_data"
require "general_funcs"

describe WeatherData do

  describe ".add" do
    context "given user provides a postcode" do
      # name of unit test is 'returns zero'
      it "return postcode" do
        userWeather = WeatherData.new("UB3 3EX")
        puts "Postcode value: " + userWeather.postcode
        expect(userWeather.postcode).to eq("UB3 3EX")
      end
    end
  end

  # for functions that are part of a class obj use . notation
  # for general functions use #<function_name>
  describe '.getinfojson' do
    it 'returns a json string' do
      userWeather = WeatherData.new("UB9 6BP")
      generalfuncs = GeneralFuncs.new
      # puts userWeather.getinfojson(userWeather.postcode)
      puts userWeather.getinfojson(userWeather.postcode).class
      # JSON object is a Hash in Ruby
      expect(userWeather.getinfojson(userWeather.postcode).is_a?(Hash)).to eq(true)
      # expect(generalfuncs.valid_json?(userWeather.getinfojson)).to eq(true)
    end
  end

  describe '.getinfojson' do
    it 'get correct location name for postcode' do
      userWeather = WeatherData.new("UB9")
      expect(userWeather.getinfojson(userWeather.postcode)["location"]["name"]).to eq("Uxbridge")
    end
  end

  describe '.gettempdata' do
    it 'get temperature data for postcode' do
      userWeather =  WeatherData.new("UB4")
      temp = userWeather.gettempdata(userWeather.postcode)
      puts "Temperature in area " + userWeather.postcode + ": " + temp.to_s + " degrees"
      # puts temp.class
      expect(temp.is_a?(Float)).to eq(true)
    end
  end

  # Hot temperature test
  describe '.calculatedatacategory' do
    it 'get hot weather response' do
      userWeather =  WeatherData.new("UB4")
      # set weather to a hot 34 degrees for testing purposes
      temp = 34.5
      # tempTwo = userWeather.gettempdata(userWeather.postcode)
      # puts tempTwo.class
      # puts "--tempTwo---"
      # puts userWeather.calculatedatacategory(tempTwo).class
      expect(userWeather.calculatedatacategory(temp)).to eq("The weather is hot")
    end
  end


  # Warm temperature test
  describe '.calculatedatacategory' do
    it 'get warm weather response' do
      userWeather =  WeatherData.new("UB4")
      # set weather to a warm 15 degrees for testing purposes
      temp = 15
      expect(userWeather.calculatedatacategory(temp)).to eq("The weather is warm")
    end
  end

  # Cold temperature test
  describe '.calculatedatacategory' do
    it 'get cold weather response' do
      userWeather =  WeatherData.new("UB4")
      # set weather to a cold -2 degrees for testing purposes
      temp = -2
      expect(userWeather.calculatedatacategory(temp)).to eq("The weather is cold")
    end
  end

  # Get current temperature
  describe '.calculatedatacategory' do
    it 'get current weather response' do
      userWeather =  WeatherData.new("UB4")
      # set weather to a hot 34 degrees for testing purposes
      temp = userWeather.gettempdata(userWeather.postcode)
      puts userWeather.calculatedatacategory(temp)+ " in: " + userWeather.postcode

    end
  end


end
