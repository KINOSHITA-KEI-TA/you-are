class MessagesController < ApplicationController
  def create
    @message = Message.create(message_params)
    respond_to do |format|
      format.html { redirect_to comment_path(params[:comment_id])  }
      format.json
    end
  end
  # message = Message.create(message_params)
  # redirect_to "/comments/#{message.comment.id}"

  private
  def message_params
    params.require(:message).permit(:name, :age, :text).merge(comment_id: params[:comment_id])
  end
end
