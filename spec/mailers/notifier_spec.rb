require 'spec_helper'

describe Notifier do
  let(:message) {
    OpenStruct.new(name: 'John Smith',
                   company: 'John Smith',
                   email: 'someone@example.com',
                   content: 'Hello')
  }
  subject { Notifier.new_message(message) }

  its(:subject) { should == "New enquiry from John Smith" }
  its(:to)      { should == ["paul@classiquekitchens.co.uk"] }
  its(:from)    { should == ["notifications@classiquekitchens.co.uk"] }

  context "general enquiry" do
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

  context "appointment" do
    let(:message) {
      OpenStruct.new(
             name: 'John Smith',
             email: 'someone@example.com',
             date: DateTime.new(2012, 5, 26, 15, 10),
             content: 'Appointment please.')
    }

    subject { Notifier.new_message(message) }

    it "sends an email" do
      subject.deliver
      mail = ActionMailer::Base.deliveries.last
      mail.subject.should == "New enquiry from John Smith"

      body = mail.encoded
      body.should include(message.name)
      body.should include(message.email)
      body.should include(message.content)
      body.should include('appointment')
      body.should include('26 May')
      body.should include('15:10')
    end
  end
end
