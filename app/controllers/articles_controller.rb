class ArticlesController < ApplicationController

  def show
    @article = Article.find(params[:id])
  end

  def new
    # @category = Category.find(params[:category_id])
    @article = Article.new(category_id: params[:category_id])
  end

  def create
    # render plain: params[:article].inspect
    @article = Article.new(article_params)
      if @article.save
        redirect_to @article
      else
        render 'new'
      end
  end

  private
  def article_params
    params.require(:article).permit(:title, :description, :author, :email, :price, :category_id)
  end
end
