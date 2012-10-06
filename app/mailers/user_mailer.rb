class UserMailer < ActionMailer::Base
  default from: "chungwan@yahoo.com"

  def welcome_email(user)
    @user= user
    @url = "http://www.picstickers.com"
    mail(:to => user.email, :subject => "Welcome to MyHomeBank")
  end

end
