require 'spec_helper'

describe Kitchen do
  let(:stormer) { FactoryGirl.create :stormer_kitchen }
  let(:hand_made) { FactoryGirl.create :hand_made_kitchen }

  it "is in the same table as stormer_kitchens" do
    FactoryGirl.create :stormer_kitchen
    FactoryGirl.create :hand_made_kitchen

    StormerKitchen.count.should  == 1 
    HandMadeKitchen.count.should == 1 
    Kitchen.count.should == 2 
  end

  describe :name do
    before { subject.name = 'Test Kitchen' }
    its(:name) { should == 'Test Kitchen' }
  end

  describe :image do
    before { subject.image = sample_image }
    it { should have_attached_file(:image) }
    it { should validate_attachment_presence(:image) }

    describe "image url" do
      it "should not include the model name in it" do
        stormer.image.url.should =~ %r{^/system/kitchens/images/#{stormer.id}/sample_image_original.jpg}
        hand_made.image.url.should =~ %r{^/system/kitchens/images/#{hand_made.id}/sample_image_original.jpg}
      end
    end
  end

  describe "validations" do
    subject { Kitchen.new name: 'Name', image: sample_image }

    it "is valid with a name and image" do
      subject.should be_valid
    end

    it "is not valid without a name" do
      subject.name = nil
      subject.should_not be_valid
    end

    it "is not valid without an image" do
      subject.image = nil
      subject.should_not be_valid
    end
  end
end
