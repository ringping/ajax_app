class PostsController < ApplicationController

  def index   #indexアクションを定義した,indexという名前のインスタンスメソッドの定義
    @posts = Post.all #全レコードをpostsに代入
  end
  def new
  end

  def create
    Post.create(content: params[:content])
  end
end
