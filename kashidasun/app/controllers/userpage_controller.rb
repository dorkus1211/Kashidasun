# coding: utf-8
class UserpageController < ApplicationController

  def index
    @books = Book.where(lending: true).order("lend_date").paginate(page: params[:page], per_page: 5)
    @book2s = Book.where(lending: true).order("lend_date")
    @members = Member.order("id")
    @id=session[:member_id]
    @lend = Member.lending(@id)
    @today = Time.now
    @days = $days
    @flag = false
  end

  def show 
  end

  def new
  end

  def edit
    @member = Member.find(params[:id])
    render layout: "members"
  end

  def create
  end

  def update
    @member = Member.find(params[:id])
    @member.assign_attributes(params[:member])
    if @member.save
      redirect_to @member, notice: "会員情報を更新したよ"
    else
      render "edit",  layout: "index"
    end
  end

  def destroy
  end

end
