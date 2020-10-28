class PostsController < ApplicationController

  def index #indexアクションの定義
   # @post = Post.find(1) #１番目のレコードを＠postに代入
     @posts = Post.all
  end

  def new #newアクション＝新規投稿ページの表示を定義
  end

  def create #createアクション＝データを投稿する
    Post.create(content: params[:content])
  end
end
