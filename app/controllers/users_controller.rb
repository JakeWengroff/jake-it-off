class UsersController < ApplicationController

  before_action :authenticate_user!

  def show
    @item = Item.new
    @items = current_user.items
  end

end
