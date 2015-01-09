class AccountController < ApplicationController
  respond_to :html, :json

  def index
    @posts = Post.where(user_id: current_user.id)
    respond_with(@posts)
  end
end
