class WardrobeItemsController < ApplicationController
  def index
    @wardrobe_items = WardrobeItem.all

    respond_to do |format|
      format.html
      format.json { render json: @wardrobe_items }
    end
  end

  def show
    @wardrobe_item = WardrobeItem.find(params[:id])
  end

  def new
    @wardrobe_item = WardrobeItem.new
  end

  def create
    @wardrobe_item = WardrobeItem.create(wardrobe_item_params)

    if @wardrobe_item.save
      redirect_to @wardrobe_item
    else 
      render action: 'new'
    end

    respond_to do |format|
      format.html
      format.json { render json: @wardrobe_items }
    end
  end

  def edit
    @wardrobe_item = WardrobeItem.find(params[:id])
  end

  def update
    wardrobe_item = WardrobeItem.find(params[:id])
    if wardrobe_item.update_attributes!(wardrobe_item_params)
      flash[:success] = "Item updated"
      redirect_to wardrobe_item
    else
      render 'edit'
    end
  end

  private

    def wardrobe_item_params
      params.require(:wardrobe_item).permit(:garment, :label, :season, :color)
    end
end

