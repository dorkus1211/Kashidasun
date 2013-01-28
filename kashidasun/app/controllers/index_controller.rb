class IndexController < ApplicationController

  def index
    @books = Book.order("id").paginate(page: params[:page], per_page: 10)
  end

  def ksearch
    q = params[:q]
    if q.present?
      @books = Book.ksearch(params[:q]).paginate(page: params[:page], per_page: 10)
    else
      @books = Book.ksearch(params[:q])
    end
    render "index"
  end

  def show 
  end

  def new
  end

  def edit
  end

  def create
  end

  def update
  end

  def destroy
  end

end
