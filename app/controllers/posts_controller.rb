class PostsController < ApplicationController
  def index
    @posts = Post.all
  end
  def new
    @post = Post.new
  end
  def create
    
  end
  def update
  end
  def show
    @post = Post.find(params[:id])
  end
  def destroy
  end
end
