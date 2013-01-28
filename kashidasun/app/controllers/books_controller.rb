class BooksController < ApplicationController

  def index
    @books = Book.order("id").paginate(page: params[:page], per_page: 10)
  end

  def search
  end

  def show
    @book = Book.find(params[:id])
  end

  def new
  end

  def edit
  end

  def create
  end

  def update
    Book.lend(params[:id], session[:member_id], $days)
    Member.member_lend(session[:member_id])
    redirect_to "/userpage"
  end

  def destroy
    Book.delete(params[:id])
    count = Book.count(session[:member_id])
    if count == 0
      Member.delete(session[:member_id])
    end
    redirect_to "/userpage"
  end
end
