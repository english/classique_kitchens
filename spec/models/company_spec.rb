require_relative '../../app/models/company'

describe Company do
  its(:phone_number) { should == "01228 12345" }
end
