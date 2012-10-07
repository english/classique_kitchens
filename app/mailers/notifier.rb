class Notifier < ActionMailer::Base
  default from: "notifications@classiquekitchens.co.uk"
  default to: "jamienglish@gmail.com"

  def new_message(message)
    @message = message
    mail(subject: "New enquiry from #{message.name}")
  end
end
