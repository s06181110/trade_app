class UsersController < ApplicationController
  #ユーザー登録画面
  def sign_up
    @user = User.new
  end
  #ユーザー登録処理
  def create
    @user = User.new
    @user.name = params[:name]
    @user.password = params[:password]
    @user.email = params[:email]
    if @user.save
      redirect_to("/users/index")
    else
      render("users/sign_up")
    end
  end
 
  #ユーザー一覧表示
  def index
    @users = User.all
  end
 
  #ユーザー情報詳細表示
  def show
  end
 
  #ユーザー情報編集画面
  def edit
  end
 
  #ユーザー情報更新処理
  def update
  end
 
  #ユーザー情報削除処理
  def destroy
  end
 
  #ユーザーログイン画面
  def login
  end
 
  #ユーザーログアウト処理
  def logout
  end

end
