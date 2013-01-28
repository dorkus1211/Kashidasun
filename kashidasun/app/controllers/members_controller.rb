class MembersController < ApplicationController
  def index
  end

  def search
  end

  def show
    @member = Member.find(params[:id])
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
