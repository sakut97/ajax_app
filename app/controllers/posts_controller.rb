class PostsController < ApplicationController

  def index #indexアクションの定義
   # @post = Post.find(1) #１番目のレコードを＠postに代入
     @posts = Post.all.order(id: "DESC")
  end

  def create #createアクション＝データを投稿する
    post = Post.create(content: params[:content], checked: false)
    render json:{ post: post }
  end

  def checked
    post = Post.find(params[:id])
    if post.checked 
      post.update(checked: false)
    else
      post.update(checked: true)
    end

    item = Post.find(params[:id])
    render json: { post: item }
  #レスポンスに返す形式を指定　jeson形式で返すよ〜 { どこモデルの：って値だよ〜}
  end

end
