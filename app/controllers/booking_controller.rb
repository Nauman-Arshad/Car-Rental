class BookingController < ApplicationController
  def home
  end

  def show
    redirect_to website_listing_path
  end
end
