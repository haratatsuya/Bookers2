class BooksController < ApplicationController
  before_action :authenticate_user!  # ログインしていないユーザーはリダイレクト
  before_action :set_book, only: [:show, :edit, :update, :destroy]

  # 本の一覧表示（自分のプロフィール＋全ての本）
  def index
    @user = current_user  # 自分のプロフィール
    @book = Book.new  # 新しい本
    @books = Book.all  # 全ての本
  end

  # 本の詳細表示（本を投稿した人のプロフィール＋本の詳細）
  def show
    @user = @book.user  # 本を投稿した人のプロフィール
  end

  private

  def set_book
    @book = Book.find(params[:id])
  end

  def book_params
    params.require(:book).permit(:title, :body)
  end
end