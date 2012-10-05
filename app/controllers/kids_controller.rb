class KidsController < ApplicationController 
  def new
    @kid = Kid.new
    @kid.parent_id = (params[:parent_id])
    @kid.build_account(:bank_id=>params[:bank_id])
  end
  
  def create
       @kid = Kid.new(params[:kid])
       if @kid.save
         redirect_to @kid
       else
         render :edit
       end
   end
   
      def show
         @kid = Kid.find(params[:id])
      end

      def index
        @kids=Kid.order("k_name ASC")
      end
   
      def destroy
         @kid = Kid.find(params[:id])
         if @kid.destroy
           redirect_to kids_path
         else
           flash[:error] = "Error deleting bank"
           redirect_to kids_path
         end
       end
   
   
       def edit
           @kid = Kid.find(params[:id])
       end


       def update
         @kid = Kid.find(params[:id])
         if @kid.update_attributes(params[:kid])
           redirect_to @kid
         else
           render :edit
         end
       end
   
  
end
