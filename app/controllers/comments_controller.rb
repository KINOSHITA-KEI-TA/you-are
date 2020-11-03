class CommentsController < ApplicationController
  def index
    @comments = Comment.all.order("created_at DESC")
  end

  def new
    @comment = Comment.new
  end

  def create
    Comment.create(comment_params)
  end

  def show
    @comment = Comment.find(params[:id])
    @message = Message.new
    @messages = @comment.messages.all
  end

  def search
    @comments = Comment.search(params[:keyword])
  end

  private
  def comment_params
    params.require(:comment).permit(:name, :age, :tittle, :text)
  end
end
