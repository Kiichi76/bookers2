class UsersController < ApplicationController
  def index
    @user = User.all
    @book = Book.new
  end
  def show
    @user = User.find(params[:id])
    @books = @user.books
    @book = Book.new
  end

  def edit
    @user = User.find(current_user.id)
  end

  def update
    @user = User
  end
end
