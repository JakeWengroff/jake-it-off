class ItemsController < ApplicationController

  def create
    @item = current_user.items.build(params.require(:item).permit(:name))
    if @item.save
      flash[:notice] = "Item was successfully saved."
    else
      flash[:error] = "There was an error saving the item. Please try again."
    end
    redirect_to user_path(current_user)
  end

   def destroy
    @item = current_user.items.find(params[:id])
    @item.destroy

    respond_to do |format|
      format.html
      format.js
    end
  end
  
end

