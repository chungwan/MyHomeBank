class TransactionsController < ApplicationController
  def index
    @transactions = Transaction.all
  end
  
  def show
    @transaction = Transaction.find(params[:id])
  end

  def new
    @transaction = Transaction.new
    @transaction.account_id = (params[:account_id])
  end
  
  def create
    @transaction = Transaction.new(params[:transaction])
    @transaction.update_attributes(params[:account_id])
    if @transaction.save
      redirect_to transactions_index_path
    else
      render :edit
    end
  end
   
     def destroy
         @transaction = Transaction.find(params[:id])
         if @transaction.destroy
           redirect_to transactions_path
         else
           flash[:error] = "Error deleting bank"
           redirect_to transactions_path
         end
       end
   
   
end
