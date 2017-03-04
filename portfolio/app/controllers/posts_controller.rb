class PostController < ApplicationController

def index
  @post = Post.all
end

def show
   @user = current_user
   @post = Post.find(params[:post_id])
 end
 def new
   @post = Post.find(params[:post_id])
   @contribution = Contribution.new
 end
 def create
   @post = Post.find(params[:post_id])
   @contribution = @post.contributions.new(contribution_params)
   if @contribution.save
     flash[:notice]="You have added a contribution!"
     redirect_to post_path(@post)
   else
     flash[:alert]="Oops, something went wrong...try again!"
     render :new
   end
 end
 def edit
   @post = Post.find(params[:post_id])
   @contribution = Contribution.find(params[:id])
 end
 def update
   @post = Post.find(params[:post_id])
   @contribution = Contribution.find(params[:id])
     if @contribution.update(contribution_params)
       flash[:notice]="You have updated your contribution!"
       redirect_to post_path(@post)
     else
       flash[:alert]="Oops, something went wrong...try again!"
       render :edit
     end
   end
   def destroy
     @post = Post.find(params[:post_id])
     @contribution = Contribution.find(params[:id])
     @contribution.destroy
     redirect_to post_path(@post)
   end



private
 def contribution_params
 params.require(:post).permit(:title, :content,)
 end
end
