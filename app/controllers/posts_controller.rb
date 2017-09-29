class PostsController < ApplicationController
  before_action :find_post, only: [:show, :edit, :update, :destory]
  def index
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      redirect_to @post, notice: "Hellz yeah, Mackenzie! Your acticle was successfully saved"
    else
      render 'new', notice: "Oh no, Mackenzie! I was unable to save your post."
    end
  end

  def show

  end

  def edit

  end

  def update

    if @post.update post_params
      redirect_to @post, notice: "Huzzah! Your article was successfully saved!"
    else
      render 'edit'
    end
  end

  def destroy

    redirect_to posts_path
  end

  private

  def find_post
    @post = Post.find(params[:id])
  end

  def post_params
    params.require(:post).permit(:title, :content)
  end
end
