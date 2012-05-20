require 'spec_helper'

describe Feature do
  it { should have_attached_file(:image) }
  it { should validate_attachment_presence(:image) }

  it "has content which is converted to markdown" do
    subject.content = "Lorem __ipsum__ dolor"
    subject.content_html.should == '<p>Lorem <strong>ipsum</strong> dolor</p>'
  end
end
