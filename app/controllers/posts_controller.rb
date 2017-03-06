class PostsController < ApplicationController
  def index
    @user = current_user
    @posts = Post.all
  end
  def  show
    @post = Post.find(params[:id])
  end
  def new
    @user = current_user
      if @user.is_admin === true
      @post = @user.posts.new
    else
      flash[:alert] = "Admins only"
      redirect_to posts_path
    end
  end
  def create
    @user = current_user
    @post = @user.posts.new(post_params)
    if @post.save
        flash[:notice] = "You have added new blog post!"
        redirect_to posts_path
      else
        flash[:alert] = "Woops"
        render :new
      end
    end
    def edit
      @user = current_user
      @post = Post.find(params[:id])
    end
    def update
      @user = current_user
      @post = Post.find(params[:id])
        if @post.update(post_params)
          flash[:notice]= "You have edited this blog post"
          redirect_to posts_path
        else
          render edit
    end

    private
    def post_params
      params.require(:post).permit(:title, :content)
    end
end
