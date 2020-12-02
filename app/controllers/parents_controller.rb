class ParentsController < ApplicationController
  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?

  def index
    @comments = Comment.all.order("created_at DESC")
  end

  def new
    @comment = Comment.new
  end

  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy
  end

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name,:school_name])
  end

  private
  def comment_params
    params.require(:comment).permit(:name, :age, :tittle, :text)
  end
end
