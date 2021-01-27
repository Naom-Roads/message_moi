class UsersController < ApplicationController
 


  def index
    @users = User.all
  end

  def show; end

  def new
    @user = User.new
  end

  def edit; end

  def create
    user = User.find_by(username: params[:user][:username])
    if user&.authenticate(params[:user][:password])
      session[:user_id] = user.id 
      flash[:success] = "You have succesfully logged in"
      redirect_to root_path
    else
      flash.now[:error] = 'There is something wrong with your login information'
      render 'new'
    end
  end

  def update; end

  def destroy 
  
    session[:user_id] = nil 
    flash[:success] = "You have succesfully logged out"
    redirect_to login_path
  end

  private

#   # Use callbacks to share common setup or constraints between actions.
#   # def set_user
#   #   @user = User.find(params[:id])
#   # end

#   # Only allow a list of trusted parameters through.
#   def user_params
#     params.require(:user).permit(:username)
#   end
end
