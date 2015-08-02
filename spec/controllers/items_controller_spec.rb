require 'spec_helper'

RSpec.describe ItemsController, type: :controller do

  before { User.delete_all }
  before { Item.delete_all }

  before(:each) do
    @user = FactoryGirl.build(:user)
    @user.save!
    sign_in @user 
  end

  describe "signed in user" do  
    it "signed in current user should not be nil" do
      subject.current_user.should_not be_nil
    end
  end

  describe "POST #create" do
    it "returns http success" do
      post :create, :user_id => @user.id, :item => { :name => "Item!"}
      response.should redirect_to(@user)
    end
  end
end

















