class PostsController < ApplicationController
  before_filter :require_user, except: [:index, :show]
  def index
    @posts = Post.all.order('created_at DESC')
  end

  def show 
    @post = Post.friendly.find(params[:id])
  end

  def admin
    @posts = Post.all  
  end

  def new
    @post = Post.new
  end


  def create
    @post = Post.new(post_params)
    if @post.valid?
      @post.save
      redirect_to posts_path, :notice => "Post successfully created!"
    else
      flash.now[:alert] = "Please see errors below"
      render "new"
    end
  end

  def edit
  end

  def update
  end

  def destroy
    Post.friendly.find(params[:id]).destroy
    flash.now[:success] = "Post deleted"
    redirect_to posts_path
  end

  private 

  def post_params
    params.require(:post).permit(:id, :title, :author, :content, :slug)
  end
end
