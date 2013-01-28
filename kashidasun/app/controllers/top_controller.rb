# coding: utf-8

class TopController < ApplicationController
  before_filter :do_before
    

  def index
    @bookdayo = Book.order("id")
    @today = Time.now
    @count = Book.newbookcount(@bookdayo,@today)
    @days = $days
  end


  def login
    hantei = Member.hantei(params[:a], params[:b])
    admin_hantei = Member.admin_hantei(params[:a])
    if hantei
      session[:login] = true
      session[:member_id] = params[:a]
      if(admin_hantei)
        session[:admin] = true
        redirect_to "/admin"
      else
        redirect_to "/userpage"
      end
    else
      redirect_to "/top", notice: "パスワードが間違っています"
    end
   rescue
      redirect_to "/top", notice: "ユーザー名が間違っています"
  end

  def logout
    session.delete(:login)
    session.delete(:member_id)
    if(session[:admin])
      session.delete(:admin)
    end
    redirect_to "/top"
  end

  def new
    @member = Member.new()
    render layout: "index"
  end

  def create
    @member = Member.new(params[:member])
    if @member.save
       redirect_to @member, notice: "新規で会員登録したよ"
    else
       render "new",layout: "index"
    end
  end


  private
  def do_before
    @books = Book.where(lending: true).order("lend_date").paginate(page: params[:page], per_page: 5)
  end
end
