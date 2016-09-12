class CommentsController < ApplicationController
  def create
        #"comment"=>{"comment"=>"great article", "email"=>"thomas@random.com"}"article_id"=>"9"
  #  @comment = Comment.create(comment_params)
    @article = Article.find(params[:article_id])
    @comment = @article.comments.create(comment_params)
    #render :'articles/show'
    redirect_to article_path(@article)
  end

  private

  def comment_params
    params.require(:comment).permit(:comment, :email)
  end

end
