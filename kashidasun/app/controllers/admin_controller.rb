# coding: utf-8
class AdminController < ApplicationController
  def index
    @books = Book.where(lending: true).order("lend_date").paginate(page: params[:page], per_page: 5)
    if @books.blank?
      @books = Book.where(lending: true).order("id")
    end
    @members = Member.order("id")
    @days = $days
  end

  def show
    @book = Book.find(params[:id])
  end

  def new
    @book = Book.new()
    render layout: "index"
  end

  def edit
  end

  def create
    @book = Book.new(params[:book])
    if @book.save
      redirect_to @book, notice: "本を登録したよ"
    else
      render "new",  layout: "index"
    end
  end

  def update
  end

  def destroy
  end

  def delete
    @books = Book.order("id").paginate(page: params[:page], per_page: 10)
    if @books.blank?
      @books = Book.order("id")
    end
    @members = Member.order("id")
    render layout: "delete"
  end

  def book_delete
    @book = Book.find(params[:id].to_i)
    @book.destroy
    redirect_to "/admin", notice: "削除したよ"
  end

  def member_new
    @member = Member.new()
    render layout: "index"
  end

  def member_create
    @member = Member.new(params[:member])
    if @member.save
      redirect_to @member, notice: "利用者を登録したよ"
    else
      render "member_new",  layout: "index"
    end
  end

  def member_list
    @books = Book.order("id")
    @members = Member.order("admin DESC").paginate(page: params[:page], per_page: 10)
    if @members.blank?
      @members = Member.order("id")
    end
    render layout: "delete"
  end

  def member_delete
    @member = Member.find(params[:id].to_i)
    @member.destroy
    redirect_to "/admin", notice: "削除したよ"
  end

end
