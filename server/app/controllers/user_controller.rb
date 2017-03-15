class UserController < JSONAPI::ResourceController
   def index
     users = User.where("is_artist" = False)
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
# Create password hash:
# def create
#   @user = User.new(params[:user])
#   @user.password = params[:password]
#   @user.save!
# end

#authentication:
# def login
#   @user = User.find_by_email(params[:email])
#   if @user.password == params[:password]
#     give_token
#   else
#     redirect_to home_url
#   end
# end
