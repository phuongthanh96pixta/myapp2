class UsersController < ApplicationController  
  def index
    @users = User.paginate(page: params[:page])
  end

  def show
    @user = current_user
  end
end