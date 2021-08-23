class PostsController < ApplicationController

  def index
    @posts = Post.all
  end
  # GET /posts/1 or /posts/1.json
  def show
  end
  # GET /posts/new
  def new
    @post = Post.new
  end
  # POST /posts or /posts.json
  def create
    @post = Post.new(post_params)

  end


  # DELETE /posts/1 or /posts/1.json
  def destroy
    @post.destroy
  end

  private
    # Only allow a list of trusted parameters through
   def post_params
     params.require(:post).permit(:image, :image_cache)
   end
end
