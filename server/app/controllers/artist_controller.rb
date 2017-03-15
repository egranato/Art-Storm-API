class ArtistController < JSONAPI::ResourceController
  def index
    artists = User.where("is_artist" = True)
    render json: {status: 'Success', message: 'Loaded all artists', data: artists}, status: :ok
  end
end
