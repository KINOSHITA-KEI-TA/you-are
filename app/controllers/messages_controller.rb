class MessagesController < ApplicationController
  def create
    message = Message.create(message_params)
    redirect_to "comment_path(comment.id)"
  end

  private
  def message_params
    params.require(:message).permit(:name, :age, :text).merge(params[:comment_id])
  end
end
