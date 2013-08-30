class FilmsController < ApplicationController
  # GET /movies
  # GET /movies.json
  def index
    @films = Film.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @films }
    end
  end

  # GET /movies/1
  # GET /movies/1.json
  def show
    @film = Film.find(params[:id])

    respond_to do |format|
      format.json { render json: @film }
    end
  end

  # GET /movies/new
  # GET /movies/new.json
  def new
    @film = Film.new

    respond_to do |format|
      format.html
      format.json { render json: @film }
    end
  end

  # GET /movies/1/edit
  def edit
    @film = Film.find(params[:id])
  end

  # POST /movies
  # POST /movies.json
  def create
    @film = Film.new(params[:film])
    respond_to do |format|
      if @film.save
        format.json { render json: @film, status: :created, location: @film }
      else
        format.json { render json: @film.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /movies/1
  # PUT /movies/1.json
  def update
    @film = Film.find(params[:id])
    respond_to do |format|
      if @film.update_attributes(params[:film])
        format.json { render json: nil , status: 'ok' }
      else
        format.json { render json: @film.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /movies/1
  # DELETE /movies/1.json
  def destroy
    @film = Film.find(params[:id])
    @film.destroy

    respond_to do |format|
      format.json { render json: nil , status: 'ok' }
    end
  end
end
