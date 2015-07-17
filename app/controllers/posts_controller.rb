class PostsController < ApplicationController
  def new
  	@post = Post.new
  end

  def create
  	@post = Post.new(post_params)
  	@post.save
  end

  def show
  	@post.find(params[:id])
  end

  private
  def post_params
  	params.require(:post).permit(:description, :picture)
  end
end
