class HomeController < ApplicationController
  def index
    if user_signed_in?
        redirect_to :controller=>'dashboard', :action => 'index'
    end
  end

  def companies
  end

  def links
  end

  def updates
    @updates = Update.all
  end
end
