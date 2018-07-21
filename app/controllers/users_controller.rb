class UsersController < ApplicationController
  def new
  end

  def create
    @user = User.create(name: params[:user][:name], password: params[:user][:password])
    #binding.pry
    if @user.authenticate(params[:user][:password_confirmation])
<<<<<<< HEAD
      #binding.pry
=======
      binding.pry
>>>>>>> 4a9a8c978083d73de35b5d5779b547879e66649d
      session[:user_id] = @user.id
      redirect_to users_index_path
    else
      redirect_to users_new_path
    end
  end

  def index
  end


end
