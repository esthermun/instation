class PostsController < ApplicationController
  def new
  	@post = Post.new
  end

  def create
  	@post = Post.new(post_params)
  	logger.debug(params)
  	@post.user_id = current_user.id
  	@post.save
  	redirect_to @post
  end

  def show
     #@post = Post.find(params[:id])  #keep in mind what you are trying to get!!
     @posts = Post.all
  end

  private
  def post_params
  	params.require(:post).permit(:description, :picture)
  end
end
