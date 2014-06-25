class FinishedCakesController < ApplicationController
  # GET /finished_cakes
  # GET /finished_cakes.json
  def index
    @finished_cakes = FinishedCake.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @finished_cakes }
    end
  end

  # GET /finished_cakes/1
  # GET /finished_cakes/1.json
  def show
    @finished_cake = FinishedCake.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @finished_cake }
    end
  end

  # GET /finished_cakes/new
  # GET /finished_cakes/new.json
  def new
    @finished_cake = FinishedCake.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @finished_cake }
    end
  end

  # GET /finished_cakes/1/edit
  def edit
    @finished_cake = FinishedCake.find(params[:id])
  end

  # POST /finished_cakes
  # POST /finished_cakes.json
  def create
    @finished_cake = FinishedCake.new(params[:finished_cake])

    respond_to do |format|
      if @finished_cake.save
        format.html { redirect_to @finished_cake, notice: 'Finished cake was successfully created.' }
        format.json { render json: @finished_cake, status: :created, location: @finished_cake }
      else
        format.html { render action: "new" }
        format.json { render json: @finished_cake.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /finished_cakes/1
  # PUT /finished_cakes/1.json
  def update
    @finished_cake = FinishedCake.find(params[:id])

    respond_to do |format|
      if @finished_cake.update_attributes(params[:finished_cake])
        format.html { redirect_to @finished_cake, notice: 'Finished cake was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @finished_cake.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /finished_cakes/1
  # DELETE /finished_cakes/1.json
  def destroy
    @finished_cake = FinishedCake.find(params[:id])
    @finished_cake.destroy

    respond_to do |format|
      format.html { redirect_to finished_cakes_url }
      format.json { head :no_content }
    end
  end
end
