class PagesController < ApplicationController
  def home
    # if params[:p].present?
    # @service = Services::WeatherData.new(params[:q])
    @postcode = params[:postcode]

    # @service = Services::WeatherData.new("UB4")
  # end
  end

  def about
  end

  # def weatherdata
  # end
end
