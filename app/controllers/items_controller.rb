class ItemsController < ApplicationController
  # def index
  #   @items = Item.all
  #   @item = Item.new
  # end

  # def show
  #   @item = Item.find(params[:id])
  # end

  # def new
  #   @item = Item.new
  # end

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

