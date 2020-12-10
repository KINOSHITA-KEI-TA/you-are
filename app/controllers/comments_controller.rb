class CommentsController < ApplicationController
  def index
    @comments = Comment.all.order("created_at DESC")
  end

  def new
    @comment = Comment.new
  end

  def create
     if Comment.create(comment_params)
      redirect_to comments_path
     else 
      flash.now[:alert] = 'メッセージを入力してください。'
      render :new
     end
  end

  def show
    @comment = Comment.find(params[:id])
    @message = Message.new
    @messages = @comment.messages.all
  end
  
  def destroy
    @comment = Comment.find(params[:id])
    if @comment.destroy
      redirect_to parents_path(@comment)
    end
  end

  def search
    @comments = Comment.search(params[:keyword])
  end

  private
  def comment_params
    params.require(:comment).permit(:name, :age, :tittle, :text)
  end
end
