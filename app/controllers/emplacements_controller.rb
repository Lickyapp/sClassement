class EmplacementsController < ApplicationController
  # GET /emplacements
  # GET /emplacements.json
  def index
    @emplacements = Emplacement.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @emplacements }
    end
  end

  # GET /emplacements/1
  # GET /emplacements/1.json
  def show
    @emplacement = Emplacement.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @emplacement }
    end
  end

  # GET /emplacements/new
  # GET /emplacements/new.json
  def new
    @emplacement = Emplacement.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @emplacement }
    end
  end

  # GET /emplacements/1/edit
  def edit
    @emplacement = Emplacement.find(params[:id])
  end

  # POST /emplacements
  # POST /emplacements.json
  def create
    @emplacement = Emplacement.new(params[:emplacement])

    respond_to do |format|
      if @emplacement.save
        format.html { redirect_to @emplacement, notice: 'Emplacement was successfully created.' }
        format.json { render json: @emplacement, status: :created, location: @emplacement }
      else
        format.html { render action: "new" }
        format.json { render json: @emplacement.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /emplacements/1
  # PUT /emplacements/1.json
  def update
    @emplacement = Emplacement.find(params[:id])

    respond_to do |format|
      if @emplacement.update_attributes(params[:emplacement])
        format.html { redirect_to @emplacement, notice: 'Emplacement was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @emplacement.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /emplacements/1
  # DELETE /emplacements/1.json
  def destroy
    @emplacement = Emplacement.find(params[:id])
    @emplacement.destroy

    respond_to do |format|
      format.html { redirect_to emplacements_url }
      format.json { head :no_content }
    end
  end
end
