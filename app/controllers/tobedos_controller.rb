class TobedosController < ApplicationController
  # GET /tobedos
  # GET /tobedos.json
  def index
    @tobedos = Tobedo.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @tobedos }
    end
  end

  # GET /tobedos/1
  # GET /tobedos/1.json
  def show
    @tobedo = Tobedo.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @tobedo }
    end
  end

  # GET /tobedos/new
  # GET /tobedos/new.json
  def new
    @tobedo = Tobedo.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @tobedo }
    end
  end

  # GET /tobedos/1/edit
  def edit
    @tobedo = Tobedo.find(params[:id])
  end

  # POST /tobedos
  # POST /tobedos.json
  def create
    @tobedo = Tobedo.new(params[:tobedo])

    respond_to do |format|
      if @tobedo.save
        format.html { redirect_to @tobedo, notice: 'Tobedo was successfully created.' }
        format.json { render json: @tobedo, status: :created, location: @tobedo }
      else
        format.html { render action: "new" }
        format.json { render json: @tobedo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /tobedos/1
  # PUT /tobedos/1.json
  def update
    @tobedo = Tobedo.find(params[:id])

    respond_to do |format|
      if @tobedo.update_attributes(params[:tobedo])
        format.html { redirect_to @tobedo, notice: 'Tobedo was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @tobedo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tobedos/1
  # DELETE /tobedos/1.json
  def destroy
    @tobedo = Tobedo.find(params[:id])
    @tobedo.destroy

    respond_to do |format|
      format.html { redirect_to tobedos_url }
      format.json { head :no_content }
    end
  end
end
