class LikesController < ApplicationController
  def create
    message = Message.find(params[:message_id])
    @alreadylike = Like.find_by(ip: request.remote_ip, message_id: params[:message_id])
    if @alreadylike
       redirect_back(fallback_location: root_path)
       flash[:notice] = "すでに”ありがとうボタン”はおされています"
    else
       @like = Like.create(message_id: params[:message_id], ip: request.remote_ip)
       redirect_back(fallback_location: root_path)
    end
  end
  
end
