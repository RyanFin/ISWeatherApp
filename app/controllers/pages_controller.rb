class PagesController < ApplicationController
  def home
    @postcode = params[:postcode]
  end

  def about
  end

end
