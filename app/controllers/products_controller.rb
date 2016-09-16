class ProductsController < ApplicationController
  before_action :authenticate_user!, :excpet => [:show]
  def show
    @product = Product.find(params[:id])
    @category = @product.category
  end
  def edit
    @product = Product.find(params[:id])
    @category = @product.category
  end
  def new
    @category = Category.find(params[:category_id])
    @product = @category.products.new
  end
  def create
    @category = Category.find(params[:category_id])
    @product = @category.products.new(product_params)
    if @product.save
      flash[:notice] = "Product saved successfully"
      redirect_to category_path(@category)
    else
      flash[:alert] = "Product failed to save"
      render :new
    end
  end
  def update
    @product = Product.find(params[:id])
    @category = @product.category
    @product.update(product_params)
    flash[:notice] = "product updated successfully"
    redirect_to category_path(@category)
  end
  def destroy
    @product = Product.find(params[:id])
    @category = @product.category
    if @product.delete
      @product.reviews.each { |review| review.destroy }
      flash[:notice] = "Product and associated reviews deleted"
      redirect_to category_path(@category)
    else
      flash[:alert] = "Product failed to delete"
    end
  end
  private
  def product_params
    params.require(:product).permit(:name, :price, :image, :category_id)
  end
end