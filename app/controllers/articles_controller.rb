#app/controllers/articles_controller.rb
class ArticlesController < ApplicationController
# before_action :set_article, only: [:show, :destroy, :edit]

  def index
    @articles = Article.all
  end

  def show
    @article = Article.find(params[:id])
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)
    @article.save

    redirect_to article_path(@article)
  end

  def destroy
    Article.destroy(params[:id])
    redirect_to articles_path
  end

  def edit
    @article = Article.find(params[:id])
  end

  private

  def article_params
    params.require(:article).permit(:title, :body)
  end

  def set_article
    @article = Article.find(params[:id])
  end
end
