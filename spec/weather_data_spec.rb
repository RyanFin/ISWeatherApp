require "weather_data"
describe WeatherData do
  describe ".add" do
    context "given user provides a postcode" do
      # name of unit test is 'returns zero'
      it "return postcode" do
        userWeather = WeatherData.new("UB4 0NH")
        expect(userWeather.postcode).to eq("UB4 0NH")
      end
    end
  end
end
