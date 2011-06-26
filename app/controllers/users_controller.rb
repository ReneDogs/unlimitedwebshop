class UsersController < ApplicationController
  #before_filter :authenticate, :only => [:show, :edit,:new, :create]
  #before_filter :correct_user, :only => [:edit, :update]
  #before_filter :admin_user,   :only => [:destroy, :edit, :update]
 def index
    @title = "All Customers"
    @users = User.paginate(:page => params[:page])
  end

  def show
    @user = User.find(params[:id])
    @title = @user.name
  end

  def new
    @user = User.new
    @title = "Sign up"
  end
  
  def create
    @user = User.new(params[:user])
    if @user.save
      flash[:success] = "Welcome to the our Webshop!"
      redirect_to @user
    else
      @title = "Sign up"
      render 'new'
    end
  end
  
   def edit
        @title = "Edit user"
        @user = User.find(params[:id])
  end
def update
    @user = User.find(params[:id])
    if @user.update_attributes(params[:user])
      flash[:success] = "Profile updated."
      redirect_to @user
    else
      @title = "Edit user"
      render 'edit'
    end
end

  def destroy
    User.find(params[:id]).destroy
    flash[:success] = "User destroyed."
    redirect_to users_path
  end
  
private

    def correct_user
      @user = User.find(params[:id])
      redirect_to(root_path) unless current_user?(@user)
    end
    
    def admin_user
      redirect_to(root_path) unless current_user.admin?
    end
        
end