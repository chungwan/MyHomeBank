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
end
