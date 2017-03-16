class UserController < JSONAPI::ResourceController

  require 'digest'

   def index
     users = User.all
     render json: {status: 'Success', message: 'Loaded all users', data: users}, status: :ok
   end

   def show
     user = User.find(params[:id])
     render json: {data: user}
   end


  def create
    user = User.new(user_params)
    if user.save
      render json: user, status: :created, location: user
    else
      render json: user.errors, status: :unprocessable_entity
    end
  end

  def update
    user = User.find(params[:id])

    if user.update(user_params)
      head :no_content
    else
    end
  end

  def destroy
    User.find(params[:id]).destroy
    head :no_content
  end

  private

  def set_user
    user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:username, :email, :first, :last, :password_digest)
  end


end
