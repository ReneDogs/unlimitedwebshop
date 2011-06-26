class OrdersController < ApplicationController
  
  def index
    @title = "My Orders"
    @orders=Order.where(:user_id=>current_user).paginate(:page => params[:page]) 
  end
  
  def show
    
    @order = Order.find(params[:id])
    @items = @order.items 
  end
  
  def create
   @orderdate= Time.new
   @user_id = current_user.id
    if @order.save
      flash[:success] = "Order created!"
      redirect_to root_path
    else
      flash[:success]= "Error!"
    end  
  end
end 