class CommentsController < ApplicationController
  def index
    @comments = Comment.all.order("created_at DESC")
  end

  def new
    @comment = Comment.new
  end

  def create
    Comment.create(comment_params)
      # if comment_params.save 
      #   redirect_to action: :new
      # else
      #   flash.now[:alert] = 'メッセージを入力してください。'
      #   render :new
      # end
  end

  def show
    @comment = Comment.find(params[:id])
  end

  private
  def comment_params
    params.require(:comment).permit(:name, :age, :tittle, :text)
  end
end
