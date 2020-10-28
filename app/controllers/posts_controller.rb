class PostsController < ApplicationController

  def index #indexアクションの定義
   # @post = Post.find(1) #１番目のレコードを＠postに代入
     @posts = Post.all.order(id: "DESC")
  end

  def create #createアクション＝データを投稿する
    Post.create(content: params[:content])
    redirect_to action: :index
  end
end
