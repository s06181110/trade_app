class PostsController < ApplicationController
  def index
    @posts = Post.all.order(created_at: :desc)
  end
  
  #新規作成
  def new 
    @post = Post.new
  end
=begin 
  def create
    @post = Post.new
    @post.member = params[:member]
    if params[:yori]
      @post.yori = true
    end
    if params[:tyu]
      @post.tyu = true
    end
    if params[:hiki]
      @post.hiki = true
    end
    if @post.member
      @post.save
      redirect_to("/posts/index")
    else
      render("posts/new")
    end

  end

 =end
end
