class TransactionsController < ApplicationController
  def index
    @transactions = Transaction.all
  end
  
  def show
     @transaction = Transaction.find(params[:id])
  end
  
  def new
   end

   def create
   end
   
   def destroy
   end

   def edit
   end

   def update
   end
   
   
end
