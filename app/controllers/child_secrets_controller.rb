class ChildSecretsController < ApplicationController
  def index
    
  end

  def create
    @secret = Secret.new(secret_params)
    if @secret.save
      redirect_to new_child_secret_path, notice: "おくりました" 
    else
      redirect_to action: "new"
      flash[:notice] = "失敗しました" 
    end
  end

  def new
  end

  private
  def secret_params
    params.permit(:name, :age, :school_name, :text)
  end
end
