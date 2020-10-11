class PostsController < ApplicationController

  def index   #indexアクションを定義した,indexという名前のインスタンスメソッドの定義
    @posts = Post.all.order(id: "DESC") #全レコードをpostsに代入
  end

  def create
    Post.create(content: params[:content])
    redirect_to action: :index
  end
end
