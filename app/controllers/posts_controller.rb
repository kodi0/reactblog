class PostsController < ApplicationController
  before_action :set_post, only: [:show, :edit, :update, :destroy]

  respond_to :html, :json

  def index
    @posts = Post.all
    respond_with(@posts)
  end

  def show
    respond_with(@post)
  end

  def create
    @post = Post.new(post_params)
    @post.user = current_user
    @post.save
    @posts = Post.all
    respond_to do |format|
      format.json { render 'index' }
    end
  end

  def update
    @post.update(post_params)
    respond_with(@post)
  end

  def destroy
    @post.destroy
    respond_with(@post)
  end

  def my_posts
    @posts = Post.where user: current_user
    respond_to do |format|
      format.json { render 'index' }
    end
  end

  private
    def set_post
      @post = Post.find(params[:id])
    end

    def post_params
      params.require(:post).permit(:title, :body)
    end
end
