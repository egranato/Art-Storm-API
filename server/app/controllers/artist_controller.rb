class ArtistController < JSONAPI::ResourceController

  require 'digest'

  def index
    artists = Artist.all
    render json: {stats: 'Success', message: 'Loaded all artists', data:artists}, status: :ok
  end

  def show
    artist = Artist.find(params[:id])
    render json: {data: artist}
  end

  def create
    artist = Artist.new(artist_params)
    if artist.save
      render json: {status: 200, data: artist}
    else
    end
  end

  def update
    artist = Artist.find(params[:id])

    if artist.update(artist_params)
      head :no_content
    else
    end
  end

  def destroy
    Artist.find(params[:id]).destroy
    head :no_content
  end

  private

  def set_artist
    artist = Artist.find(params[:id])
  end

  def artist_params
    params.require(:artist).permit(:first, :last, :email, :password, :username, :phone, :website_url, :portrait_url, :bio, :quick_intro)
  end

end
