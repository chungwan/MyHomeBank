class AccountsController < ApplicationController
  def index
    @accounts = Account.all
  end
  
  def show
    @account = Account.find(params[:id])
  end

  def new
    @account = Account.new
  end
  
  def create
    @account = Account.new(params[:account])
    if @account.save
      redirect_to @account
    else
      render :edit
    end
  end
   
  def destroy
    @account = Account.find(params[:id])
    if @account.destroy
      redirect_to accounts_path
    else
      flash[:error] = "Error deleting bank"
      redirect_to accounts_path
    end
  end

  def edit
    @account= Account.find(params[:id])
  end

  def update
    @account = Account.find(params[:id])
    if @account.update_attributes(params[:account])
      redirect_to @account
    else
      render :edit
    end
  end

      
end
