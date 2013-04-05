class WeddingController < ApplicationController
  protect_from_forgery
  def index
    @guest_group = GuestGroup.new
  end
end