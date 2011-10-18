class PostsController < ApplicationController
  def index
      @posts = Post.all
  end

  def create
    @post = Post.new(params[:post])
    @post.postUser = current_user.username
    if @post.save
      redirect_to posts_path, :notice => "Gonderi Basarili"
    else
      render "new"
    end
  end

  def new
    @post = Post.new
  end

  def edit
    @post = Post.find(params[:id])
  end

  def show
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])

    if @post.update_attributes(params[:post])
      redirect_to posts_path, :notice => "Guncelleme Basarili"
    else
      render "edit"
    end
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to posts_path, :notice => "Basariyla Kaldirildi"

  end

end
