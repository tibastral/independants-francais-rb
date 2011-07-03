class IndependantsController < ApplicationController
  # GET /independants
  # GET /independants.json
  def index
    @independants = Independant.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @independants }
    end
  end

  # GET /independants/1
  # GET /independants/1.json
  def show
    @independant = Independant.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @independant }
    end
  end

  # GET /independants/new
  # GET /independants/new.json
  def new
    @independant = Independant.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @independant }
    end
  end

  # GET /independants/1/edit
  def edit
    @independant = Independant.find(params[:id])
  end

  # POST /independants
  # POST /independants.json
  def create
    @independant = Independant.new(params[:independant])

    respond_to do |format|
      if @independant.save
        format.html { redirect_to @independant, notice: 'Independant was successfully created.' }
        format.json { render json: @independant, status: :created, location: @independant }
      else
        format.html { render action: "new" }
        format.json { render json: @independant.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /independants/1
  # PUT /independants/1.json
  def update
    @independant = Independant.find(params[:id])

    respond_to do |format|
      if @independant.update_attributes(params[:independant])
        format.html { redirect_to @independant, notice: 'Independant was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @independant.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /independants/1
  # DELETE /independants/1.json
  def destroy
    @independant = Independant.find(params[:id])
    @independant.destroy

    respond_to do |format|
      format.html { redirect_to independants_url }
      format.json { head :ok }
    end
  end
end
