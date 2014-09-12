class DashboardController < ApplicationController
  before_filter :authenticate_user!

  def index
  end

  def list
    @s = Student.all
  end


  def filter
  end

  def search
    if params[:search]
      @students = Student.where("regd_no LIKE ?","%#{:search}%")
    end
  end

  def mail
  end

  def students
  end

  def jkc
  end

  def post
  end
end
