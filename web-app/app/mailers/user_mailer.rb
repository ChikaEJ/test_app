class UserMailer < ApplicationMailer

  default from: 'notifications@test_app.com'

  def welcome_email
    @email = params[:email]
    @url  = 'http://localhost:3000'
    mail(to: @email, subject: 'Welcome to Test App!')
  end
end
