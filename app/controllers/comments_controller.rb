class CommentsController < ApplicationController
  def create
    # @post = Post.find(params[:article_id])
    @comment = Comment.new(comment_params)
    # @post.comments.append(@comment)
    # @comment = @post.comments.create(comment_params)
    if @comment.save       
      endflash[:success] = "Comment saved." 
    end
    # redirect_to post_path(@post)
  end

  def new
    @comment = Comment.new
  end

  private
    def comment_params
      params.require(:comment).permit(:commenter, :body)
    end
end
