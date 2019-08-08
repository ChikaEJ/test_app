class WelcomPageSenderWorker
  include Sidekiq::Worker

  def perform(name, email)
    puts "Sending a message to #{name} #{email}"
    # Do something
  end
end
