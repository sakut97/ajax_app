class PostsController < ApplicationController

  def index #indexアクションの定義
   # @post = Post.find(1) #１番目のレコードを＠postに代入
     @posts = Post.all.order(id: "DESC")
  end

  def create #createアクション＝データを投稿する
    Post.create(content: params[:content])
    redirect_to action: :index
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
  end
  
end
