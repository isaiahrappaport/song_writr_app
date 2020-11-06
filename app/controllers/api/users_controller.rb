class Api::UsersController < ApplicationController
  before_action :authenticate_user, except: [:index, :show, :create]

  def index
    @users = User.all
    render "index.json.jb"
  end

  def show
    if params[:id] == "current"
      @user = current_user
    else
      @user = User.find_by(id: params[:id])
    end
    render "show.json.jb"
  end

  def create
    @user = User.new(
      name: params[:name],
      username: params[:username],
      profile_picture: params[:profile_picture],
      email: params[:email],
      password: params[:password],
      password_confirmation: params[:password_confirmation],
    )
    if @user.save
      render json: { message: "User created successfully!" }, status: :created
    else
      render json: { errors: @user.errors.full_messages }, status: :bad_request
    end
  end

  def update
    @user = User.find_by(id: params[:id])
    @user.name = params[:name] || @user.name
    @user.username = params[:username] || @user.username
    @user.profile_picture = params[:profile_picture] || @user.profile_picture
    @user.email = params[:email] || @user.email

    if @user.save
      render "show.json.jb"
    else
      render json: { errors: @user.errors.full_messages }, status: :bad_request
    end
  end

  def destroy
    user = User.find_by(id: params[:id])
    user.destroy
    render json: { message: "User successfully deleted!" }
  end
end
