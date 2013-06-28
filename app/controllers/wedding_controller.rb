class WeddingController < ApplicationController
  protect_from_forgery
  def index
    @guest_group = GuestGroup.new
    #@guest_group.vulnerabilities = "Examples: Silver Bullets, Garlic, CO2, Red Meat, Carrots."
  end
end