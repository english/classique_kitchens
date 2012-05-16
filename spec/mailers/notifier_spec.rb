require 'spec_helper'

describe Notifier do
  let(:message) {
    #:name, :email, :content
    double('Message', name: 'John Smith', email: 'someone@example.com',
           content: 'Hello')
  }
  subject { Notifier.new_message(message) }

  its(:subject) { should == "New enquiry from John Smith" }
  its(:to) { should == ["paul@classiquekitchens.co.uk"] }
  its(:from) { should == ["contact-form@classiquekitchens.co.uk"] }

  it "sends an email" do
    subject.deliver
    ActionMailer::Base.deliveries.last.subject.should == "New enquiry from John Smith"
  end
end
