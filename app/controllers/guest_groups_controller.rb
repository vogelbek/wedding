class GuestGroupsController < ApplicationController
  # GET /guest_groups
  # GET /guest_groups.json
  def index
    @guest_groups = GuestGroup.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @guest_groups }
    end
  end

  # GET /guest_groups/1
  # GET /guest_groups/1.json
  def show
    @guest_group = GuestGroup.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @guest_group }
    end
  end


  # GET /guest_groups/1/edit
  def edit
    @guest_group = GuestGroup.find(params[:id])
  end

  # POST /guest_groups
  # POST /guest_groups.json
  def create
    @guest_group = GuestGroup.new(params[:guest_group])

    respond_to do |format|
      if @guest_group.save
        format.html { redirect_to root_url, notice: 'Guest group was successfully created.' }
        format.json { render json: @guest_group, status: :created, location: @guest_group }
      else
        format.html { render action: "new" }
        format.json { render json: @guest_group.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /guest_groups/1
  # PUT /guest_groups/1.json
  def update
    @guest_group = GuestGroup.find(params[:id])

    respond_to do |format|
      if @guest_group.update_attributes(params[:guest_group])
        format.html { redirect_to @guest_group, notice: 'Guest group was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @guest_group.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /guest_groups/1
  # DELETE /guest_groups/1.json
  def destroy
    @guest_group = GuestGroup.find(params[:id])
    @guest_group.destroy

    respond_to do |format|
      format.html { redirect_to guest_groups_url }
      format.json { head :no_content }
    end
  end
end
