require 'spec_helper'

RSpec.describe ItemsController, type: :controller do

  before { User.delete_all }
  before { Item.delete_all }

  before(:each) do
    @user = FactoryGirl.create(:user)
    sign_in @user 
    @item = FactoryGirl.create(:item)
    @user.items << @item
  end

  describe "signed in user" do  
    it "signed in current user should not be nil" do
      @user = FactoryGirl.build(:user)  
      @user.save!
      sign_in @user 
      subject.current_user.should_not be_nil
    end
  end

  describe "POST #create" do
    it "returns http success" do
      post :create, :user_id => @user.id, :item => { :name => "Item!"}
      response.should redirect_to(@user)
    end
  end

  describe "DELETE #destroy" do
    it "deletes the item" do
      expect{
        delete :destroy, id: @item
      }.to change(Item, :count).by(-1)
    end

    it "redirects to the To Do List" do
      delete :destroy, id: @item
      response.should redirect_to(@user)
    end
  end

end















