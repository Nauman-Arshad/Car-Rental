class WebsiteController < ApplicationController
  def home
  end

  def listing
    @cars = Car.all
  end

  def about
  end

  def contact
  end

  def blog
  end

  def testimonial
  end
end
