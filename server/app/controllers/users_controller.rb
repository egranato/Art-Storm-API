class UsersController < ApplicationController


  def index
    @users = User.all

    render json: @users
  end

  def show
    render  json: @user
  end

  def create
    @user = User,new(user_params)

    if @user.save
      render json: @user
    else
      render json: @users.errors
    end
  end

  def update
    @user = User.find(params[:id])

    if @user.update(user_params)
      head :no_content
    else
      render json: @user.errors
    end

    def destroy
      @user = User.find(params[:id])
    end


    private




end
