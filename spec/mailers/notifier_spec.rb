require 'spec_helper'

describe Notifier do
  let(:message) {
    double('Message',
           name: 'John Smith',
           company: 'John Smith',
           email: 'someone@example.com',
           content: 'Hello')
  }
  subject { Notifier.new_message(message) }

  its(:subject) { should == "New enquiry from John Smith" }
  its(:to)      { should == ["paul@classiquekitchens.co.uk"] }
  its(:from)    { should == ["notifications@classiquekitchens.co.uk"] }

  it "sends an email" do
    subject.deliver
    mail = ActionMailer::Base.deliveries.last
    mail.subject.should == "New enquiry from John Smith"

    body = mail.encoded
    body.should include(message.name)
    body.should include(message.company)
    body.should include(message.email)
    body.should include(message.content)
  end
end
