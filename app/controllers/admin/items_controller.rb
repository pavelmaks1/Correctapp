class Admin::ItemsController < ApplicationController
  before_action :set_item, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  respond_to :html

  def index
    @items = Item.all
    respond_with(@items)
  end

  def show
    respond_with(@item)
  end

  def new
    @admin_item = Item.new
    respond_with(@admin_item)
  end

  def edit
  end

  def create
    @admin_item = Item.new(item_params)
    @admin_item.save
    respond_with(@admin_item)

  end

  def update
    @admin_item.update(item_params)
    respond_with(@admin_item)
  end

  def destroy
    @item.destroy
    respond_with(@item)
  end

  private
  def set_item
    @admin_item = Item.find(params[:id])
  end

  def item_params
    params.require(:item).permit(:id, :title, :description, :category_id, {images: []})
  end
end
