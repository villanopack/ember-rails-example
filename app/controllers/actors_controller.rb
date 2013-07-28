class ActorsController < ApplicationController

  # GET /actors
  # GET /actors.json
  def index
    @actors = Actor.all

    respond_to do |format|
      format.json { render json: @actors }
    end
  end

  # GET /actors/1
  # GET /actors/1.json
  def show
    @actor = Actor.find(params[:id])

    respond_to do |format|
      format.json { render json: @actor }
    end
  end

  # GET /actors/new
  # GET /actors/new.json
  def new
    @actor = Actor.new

    respond_to do |format|
      format.json { render json: @actor }
    end
  end

  # GET /actors/1/edit
  def edit
    @actor = Actor.find(params[:id])
  end

  # POST /actors
  # POST /actors.json
  def create
    @actor = Actor.new(params[:actor])

    respond_to do |format|
      if @actor.save
        format.json { render json: @actor, status: :created, location: @actor }
      else
        format.json { render json: @actor.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /actors/1
  # PUT /actors/1.json
  def update
    @actor = Actor.find(params[:id])

    respond_to do |format|
      if @actor.update_attributes(params[:actor])
        format.json { render json: nil , status: 'ok' }
      else
        format.json { render json: @actor.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /actors/1
  # DELETE /actors/1.json
  def destroy
    @actor = Actor.find(params[:id])
    @actor.destroy

    respond_to do |format|
      format.json { render json: nil , status: 'ok' }
    end
  end

end
