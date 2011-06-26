class ArticlesController < ApplicationController
  before_filter :admin_user,   :only => [:destroy, :edit, :update]
  def index
    @title = "All articles"
    @articles = Article.paginate(:page => params[:page])
  end
  
  def show
    @article = Article.find(params[:id])
  end

  def new
    @article = Article.new
    @title = "New article"
  end
  
  def create
    @article = Article.new(params[:article])
    if @article.save
      flash[:success] = "New Article create!"
      redirect_to articles_path
    else
      @title = "New Article"
      render 'new'
    end
  end
  
  def edit
        @title = "Edit Article"
        @article = Article.find(params[:id])
  end
     
def update
    @article = Article.find(params[:id])
    if @article.update_attributes(params[:article])
      flash[:success] = "Article updated."
      redirect_to articles_path
    else
      @title = "Edit article"
      render 'edit'
    end
end

  def destroy
    Article.find(params[:id]).destroy
    flash[:success] = "Article destroyed."
    redirect_to articles_path
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