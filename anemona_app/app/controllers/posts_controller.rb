class PostsController < ApplicationController
  $abc = 1
  def new
    @post = Post.new
    
  end
  
  def index
    @post = Post.paginate(page: params[:page], per_page: 20)
  end
  
  def show
    @post = Post.find(params[:id])
    $abc = @post
    @comments = @post.comments.paginate(page: params[:page])
    @comment = @post.comments.build
  end
  
  def create
    @post = Post.new(post_params)
    if @post.save
      redirect_to @post
    else
      render 'new'
    end
  end
  
  def createComment
    @comment =  $abc.comments.build(comments_params)
    if @comment.save
      redirect_to $abc
    else
      render 'static_pages/home'
    end
  end

  private

    def post_params
      params.require(:post).permit(:nick, :topic, :content)
    end
    
    def comments_params
      params.require(:comment).permit(:content)
    end
end
