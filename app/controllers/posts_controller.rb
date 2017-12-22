class PostsController < ApplicationController
  # before_action :authorize


  def index
    @post = Post.all
  end

  def new

  end

  def show
    @post = Post.find(params[:id])
  end

  def create
    Post.create(
      title: params[:title],
      content: params[:content],
      avatar: params[:avatar]
    )
    redirect_to '/'
  end

  def destroy
    post = Post.find(params[:id])
    post.destroy
    redirect_to root_path
  end

  def edit
    @post = Post.find(params[:id])
  end


  def update
    post = Post.find(params[:id])
    post.update(
      title: params[:title],
      content: params[:content]
    )
    redirect_to "/posts/show/#{params[:id]}"
  end


end
