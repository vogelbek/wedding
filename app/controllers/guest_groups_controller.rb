class GuestGroupsController < ApplicationController

  def create
    @guest_group = GuestGroup.new(params[:guest_group])

    respond_to do |format|
      if @guest_group.save
        format.html { redirect_to root_url, notice: 'Thank You for Your RSVP! See You in October!' }
        format.json { render json: @guest_group, status: :created, location: @guest_group }
      else
        format.html { render "wedding/index" }
        format.json { render json: @guest_group.errors, status: :unprocessable_entity }
      end
    end
  end

end
