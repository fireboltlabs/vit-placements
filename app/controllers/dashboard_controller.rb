class DashboardController < ApplicationController
  before_filter :authenticate_user!

  def index
  end

  def list
    @q = Student.ransack(params[:q])
    @students = @q.result.includes(:ssc, :inter_or_diplomo, :btech)

  end


  def filter
    @q = Student.ransack(params[:q])
    @students = @q.result.includes(:ssc, :inter_or_diplomo, :btech)
    @q.build_condition

  end

  def search

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
