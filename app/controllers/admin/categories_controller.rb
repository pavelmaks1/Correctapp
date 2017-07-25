class Admin::CategoriesController < ApplicationController
  before_action :set_category, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!
  respond_to :html

  def index
    @categories = Category.all
    respond_with(@categories)
  end

  def show
    respond_with(@category)
  end

  def new
    @admin_category = Category.new
    respond_with(@admin_category)
  end

  def edit

  end

  def create
    @admin_category = Category.new(category_params)
    @admin_category.save
    respond_with(@admin_category)
  end

  def update
    @admin_category.update(category_params)
    respond_with(@admin_category)
  end

  def destroy
    @category.destroy
    respond_with(@category)
  end

  private
  def set_category
    @admin_category = Category.find(params[:id])
  end

  def category_params
    params.require(:category).permit(:title)
  end
end