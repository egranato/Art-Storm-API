class ArtistsController < ApplicationController


  def index
    @artists = Artist.all

    render json: @artists
  end

  def show
    render  json: @artists
  end

  def create
    @artist = Artist,new(artist_params)

    if @artist.save
      render json: @artist
    else
      render json: @artists.errors
    end
  end

  def update
    @artist = Artist.find(params[:id])

    if @artist.update(artist_params)
      head :no_content
    else
      render json: @artist.errors
    end

    def destroy
      @artist = Artist.find(params[:id])
    end


    private




end
