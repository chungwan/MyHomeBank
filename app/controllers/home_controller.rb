class HomeController < ApplicationController
  
  before_filter :authenticate_user!, except: [:about]
  
  def index
  end
  
  def admin
    @parents=Parent.all
  end

  def about
  end
end
