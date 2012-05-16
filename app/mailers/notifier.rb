class Notifier < ActionMailer::Base
  default from: "contact-form@classiquekitchens.co.uk"
  default to: "paul@classiquekitchens.co.uk"

  def new_message(message)
    @message = message
    mail(subject: "New enquiry from #{message.name}")
  end
end
