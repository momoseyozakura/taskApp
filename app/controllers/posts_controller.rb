class PostsController < ApplicationController
  protect_from_forgery
  
  def index
    @posts = Post.all
  end

  def show
    @post = Post.find_by(id: params[:id])
  end

  def new
    @post = Post.new
  end

  def edit
    @post = Post.find_by(id: params[:id])
  end

  def update
    @post = Post.find_by(id: params[:id])
    @post.scedule = params[:scedule]
    @post.start = params[:start]
    @post.end = params[:end]
    @post.check = params[:check]
    @post.memo = params[:memo]
    if @post.save
      redirect_to("/")
    else
      render ("posts/edit")
    end
  end

  def create
    @post = Post.new(scedule: params[:scedule], start: params[:start], end: params[:end], check: params[:check], memo: params[:memo])
    if @post.save
      redirect_to("/")
    else
      render ("posts/new")
    end
  end

  def destroy
    @post = Post.find_by(id: params[:id])
    @post.destroy
    redirect_to("/")
  end
end
