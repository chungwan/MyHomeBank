class BanksController < ApplicationController
  def new
    @bank = Bank.new
    @bank.parent_id = (params[:parent_id])
  end
  
  def create
       @bank = Bank.new(params[:bank])
       @bank.update_attributes(params[:parent_id])
       if @bank.save
         redirect_to parent_path(@bank.parent)
       else
         render :edit
       end
   end
   
   

      def show
         @bank = Bank.find(params[:id])
      end

      def index
        @banks=Bank.all
      end
   
      def destroy
         @bank = Bank.find(params[:id])
         if @bank.destroy
           redirect_to @bank
         else
           flash[:error] = "Error deleting bank"
           redirect_to @bank
         end
       end
   
      
   
   
   
end
