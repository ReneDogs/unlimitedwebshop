class ItemsController < ApplicationController
  def new
    @item = item.new
      end
   
  def create
     if @item.save
      flash[:success] = "Order created!"
      redirect_to root_path
    else
      flash[:success]= "Error!"
    end  
  end

  def create
   @orderdate= Time.new
   @user = current_user
    if @order.save
      flash[:success] = "Order created!"
      redirect_to root_path
    else
      flash[:success]= "Error!"
    end  
  end

  def destroy
    Item.find(params[:id]).destroy
    flash[:success] = "Item destroyed."
    end
end
