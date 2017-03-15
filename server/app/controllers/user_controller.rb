class UserController < JSONAPI::ResourceController
 def index
   users = User.all
   render json: {status: 'Success', message: 'Loaded all users', data: users}, status: :ok
 end

 def show
   user = User.find(user_path[:id])
   render json: user
 end

 def create
   user = User.new(user_path[:id])

     render json: {status: 'Created', data: user}, status: :ok
 end
 #
 #
 # private
 #
 # def set_user
 #   user = User.find(user_path[:id])
 # end

 # def user_path
 #   path.require(:user).permit(:username, :email, :first, :last, :password)
 # end



end
