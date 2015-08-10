require 'spec_helper'

RSpec.describe Item, type: :model do
  it "should have valid factory" do
    FactoryGirl.build(:user).should be_valid
  end

  it "should require a username" do
    FactoryGirl.build(:user, :email => "").should_not be_valid
  end

  it "displays time remaining" do
    expect(FactoryGirl.build(:item)).to respond_to(:days_left)
  end

end