class CommentsController < ApplicationController
  def index
  end

  def show
  end

  def edit
  end

  def destroy
    @post = Post.find(params[:post_id])
    @post.comments.find(params[:id]).destroy
    redirect_to post_path(@post)
  end

  def new
  end

  def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.create(params[:comment].permit(:name, :comment))
    redirect_to post_path(@post)
  end

  def update
  end
end
