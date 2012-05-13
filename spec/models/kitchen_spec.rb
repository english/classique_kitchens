require 'spec_helper'

describe Kitchen do
  it "can be featured" do
    subject = FactoryGirl.create(:kitchen)
    subject.featured = true
    subject.save

    Kitchen.featured.last.should == subject
  end
end

describe "#{StormerKitchen} and #{HandMadeKitchen}" do
  specify "Are in the same table as Kitchen" do
    FactoryGirl.create :stormer_kitchen
    FactoryGirl.create :hand_made_kitchen

    StormerKitchen.count.should  == 1 
    HandMadeKitchen.count.should == 1 
    Kitchen.count.should == 2 
  end
end
