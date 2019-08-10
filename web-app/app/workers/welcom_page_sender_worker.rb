class WelcomPageSenderWorker
  include Sidekiq::Worker
  sidekiq_options retry: false

  def perform(email)
    UserMailer.with(email: email).welcome_email.deliver_now
  end
end
