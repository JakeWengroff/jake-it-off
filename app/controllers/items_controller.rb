class ItemsController < ApplicationController

  def create
    @item = current_user.items.build(params.require(:item).permit(:name))
    if @item.save
      flash[:notice] = "Item was successfully saved."
      redirect_to current_user
    else
      flash[:error] = "There was an error saving the item. Please try again."
      render :new
    end
  end
end

