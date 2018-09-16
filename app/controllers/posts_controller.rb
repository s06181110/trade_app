class PostsController < ApplicationController
  def index
    @posts = Post.all.order(created_at: :desc)
  end
  
  #新規作成
  def new 
    @post = Post.new
  end

  def create
    @post = Post.new
    @post.content = ""
    members = []
    members = params[:members]
    if(params[:members][0] != "noselect" && (params[:yori] || params[:tyu] || params[:hiki]))
      members.each do |member|
        @post.content.concat(member)
        if params[:yori]
          @post.content.concat(" ヨリ")
        end
        if params[:tyu]
          @post.content.concat(" チュウ")
        end
        if params[:hiki]
          @post.content.concat(" ヒキ")
        end
        @post.content.concat(" \n")
      end
      if params[:comment]
        @post.comment = params[:comment]
      end
      @post.save
      redirect_to("/posts/index")
    else
      render("posts/new")
    end
  end

end
