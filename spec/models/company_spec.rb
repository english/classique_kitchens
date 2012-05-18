require_relative '../../app/models/company'

describe Company do
  its(:phone_number) { should == "01228 525676" }
  its(:address) { should == "Unit 2, Port Road Workshops, Carlisle, Cumbria, CA2 7AJ" }
  its(:blurb) { should =~ /Classique Kitchens/ }
end
