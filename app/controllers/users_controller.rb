class UsersController < ApplicationController
  
  def show
    @user = User.find(params[:id])
    @comments = @user.comments.paginate(page: params[:page])
  end
  
  def new
    @user = User.new
  end
end
