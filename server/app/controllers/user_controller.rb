class UserController < JSONAPI::ResourceController
   def index
     users = User.all
     render json: {status: 'Success', message: 'Loaded all users', data: users}, status: :ok
   end

  #  def show
  #    render json: {data: user}
  #  end


  def create
    user = User.new(user_params)
    if user.save
      render json: {status: 'Success', data: user}
    else
    end
  end

  private

  def set_user
    user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:username, :email, :first, :last, :password)
  end

end
