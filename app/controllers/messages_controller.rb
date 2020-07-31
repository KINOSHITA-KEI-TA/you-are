class MessagesController < ApplicationController
  def create
    message = Message.create(message_params)
    redirect_to "/comments/#{message.comment.id}"
  end

  private
  def message_params
    params.require(:message).permit(:name, :age, :text).merge(comment_id: params[:comment_id])
  end
end
