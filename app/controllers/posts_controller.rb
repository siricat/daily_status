class PostsController < ApplicationController
  
  def index
    @posts = Post.all
  end
  
  def show
    @post = Post.find(params[:id])
  end  
  
  def new
    @post = Post.new
  end
  
  def create
    @post = Post.new(params[:post])
    if @post.save
      flash[:notice] = "Daily Post has been created."
      redirect_to @post
    else
      flash[:error] = "Daily Post has not been created."
      render :action => "new"
    end
  end
  
  def edit
    @post = Post.find(params[:id])
  end
  
  def update
    @post = Post.find(params[:id])
    if @post.update_attributes(params[:post])
      flash[:notice] = "Daily Post has been updated."
      redirect_to @post
    else
      flash[:error] = "Daily Post has not been updated."
      render :action => "edit"
    end    
  end
  
  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    flash[:notice] = "Daily Post has been deleted."
    redirect_to posts_path
  end
  
  
  
  
  
end
