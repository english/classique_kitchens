require_relative '../../app/models/company'

describe Company do
  its(:phone_number) { should == "01228 12345" }
  its(:address) { should == "123 Street, Carlisle, CA1 2AB" }
end
