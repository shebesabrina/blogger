class ArticlesController < ApplicationController
    before_action :set_article, except: [:index, :new, :create]

    def index
      @articles = Article.all
    end

    def new
      @article =  Article.new
    end

    def show

    end

    def create
      article = Article.create(article_params)

      redirect_to article_path(article)
    end

    def destroy
      
      @article.destroy

      redirect_to articles_path
    end

    def edit

    end

    def update

      @article.update(article_params)

      redirect_to article_path(@article)
    end

    private

    def article_params
      params.require(:article).permit(:title, :body)
    end

    def set_article
      @article = Article.find(params[:id])
    end

end
