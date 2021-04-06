class UserMailer < ApplicationMailer
  default from: 'everybody@appacademy.io'

  def welcome_email(user)
    @user = user
    @url = 'http://appacademy.io/login'
    mail(to: user.email, subject: 'Welcome to My Awesome KITTY Site')
  end

end
