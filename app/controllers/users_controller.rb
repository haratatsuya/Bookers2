class UsersController < ApplicationController
  before_action :authenticate_user!  # ログインしていないユーザーはリダイレクト
  before_action :set_user, only: [:show, :edit, :update]

  # ユーザーの一覧表示（自分のプロフィール＋全てのユーザー）
  def index
    @user = current_user  # 自分のプロフィール
    @users = User.all  # 全てのユーザー
  end

  # ユーザー詳細表示（そのページのユーザーのプロフィール＋ユーザーの投稿詳細）
  def show
    @books = @user.books  # ユーザーの投稿した本
  end

  private

  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:name, :introduction)
  end
end