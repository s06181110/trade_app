Rails.application.routes.draw do
  get "posts/index" => "posts#index"
  get "posts/new" => "posts#new"
  post "posts/create" => "posts#create"
  get "posts/index" => "posts#index"


  get "users/sign_up" => "users#sign_up"#登録
  post "users/create" => "users#create" #登録処理
  get "users/index" => "users#index" #一覧表示
  get "users/:id" => "users#show" #詳細表示
  get "users/:id/edit" => "users#edit" #編集
  post "users/:id/update" => "users#update" #更新処理
  post "users/:id/destroy" => "users#destroy" #削除処理
  get "login" => "users#login_form" #ログイン
  post "login" => "users#login" #ログイン処理
  post "logout" => "users#logout" #ログアウト

  
  get "/" => "home#top"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
