class CommentsController < ApplicationController
  def create
    article = Article.find(params[:article_id])
    @comment = article.comments.create(comment_params)
    # @comment = Comment.new(comment_params)
    # @comment.article_id = params[:article_id]

    redirect_to article_path(article)
  end

  def new
    @comment = Comment.new
  end

  private

  def comment_params
    params.require(:comment).permit(:author_name, :body)
  end
end
