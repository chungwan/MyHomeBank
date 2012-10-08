class UsersController < ApplicationController
  def create
    @user = User.new(params[:user])
    
    respond_to do |format|
          if @user.save
            # Tell the UserMailer to send a welcome Email after save
            UserMailer.welcome_email(@user).deliver
          end
        end
      end
      
      def index
      @users = User.all
      end
      
       def destroy
           @user = User.find(params[:id])
           if @user.destroy
             redirect_to users_path
           else
             flash[:error] = "Error deleting bank"
             redirect_to users_path
           end
       end
      
      
      
end
