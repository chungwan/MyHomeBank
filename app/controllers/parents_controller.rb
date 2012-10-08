class ParentsController < ApplicationController
  def index
    @parents=Parent.order("p_name ASC")
  end

  def show
     @parent = Parent.find(params[:id])
  end

  def new
    @parent = Parent.new
    @parent.build_bank
   
  end
   
  def create
      @parent = Parent.new(params[:parent])
      if @parent.save
        redirect_to @parent
      else
        render :edit
      end
  end
  
  def edit
      @parent = Parent.find(params[:id])
  end

  
  def update
    @parent = Parent.find(params[:id])
    if @parent.update_attributes(params[:parent])
      redirect_to @parent
    else
      render :edit
    end
  end
  
     def destroy
         @parent = Parent.find(params[:id])
         if @parent.destroy
           redirect_to parents_path
         else
           flash[:error] = "Error deleting bank"
           redirect_to parents_path
         end
       end
  
   
end
