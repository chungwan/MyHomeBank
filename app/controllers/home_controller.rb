class HomeController < ApplicationController
  def index
  end
  
  def admin
    @parents=Parent.all
  end

  def about
  end
end
