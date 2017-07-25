class CategoriesController < ApplicationController

  def index
    @categories = Category.all
    respond_with(@categories)
  end

  def show
    @category = Category.find(params[:id])
    respond_with(@category)
  end


end
