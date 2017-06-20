class PostsController < ApplicationController
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
    @post = Post.find(params[:id])
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    if @post.save
      redirect_to @post, notice: "Huzzah! Your article was successfully saved!"
    else
      render 'edit'
    end
  end

  def destroy
    @post = Post.find(params[:id])
    redirect_to posts_path
  end

  private

  def post_params
    params.require(:post).permit(:title, :content)
  end
end
