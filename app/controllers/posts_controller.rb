class PostsController < ApplicationController
  def index
    @posts = Post.all
  end
  def  show
    @post = Post.find(params[:id])
  end
  def new
    @user = current_user
      @user.is_admin?
      @post= Post.new
    else
      flash[:alert] = "Admins only"
      redirect_to posts_path
  end

end
