class PagesController < ApplicationController

  def home
    @basetitle = "Unlimited WebShop"
    @title = "Home"
    @articles = Article.paginate(:page => params[:page])
  end
    

  def help
    @basetitle = "Unlimited WebShop"
    @title = "Help"
  end
  
  def contact
    @basetitle = "Unlimited WebShop"
    @title = "Contact"
  end
  
  def about
    @basetitle = "Unlimited WebShop"
    @title = "About"
  end
  
  def cart
    @basetitle = "Unlimited WebShop"
    @title = "Cart"
    @articles = Article.find(3)
  end
 
end