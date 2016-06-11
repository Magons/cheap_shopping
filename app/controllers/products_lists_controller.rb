class ProductsListsController < ApplicationController
  before_action :set_products_list, only: [:show, :edit, :update, :destroy]

  respond_to :html, :json

  def index
    @products_lists = ProductsList.all
    respond_with(@products_lists)
  end

  def show
  end

  def new
    @products_list = ProductsList.new
  end

  def edit
  end

  def create
    @products_list = ProductsList.new(products_list_params)

    if @products_list.save
      redirect_to @products_list, notice: 'Products list was successfully created.'
    else
      render :new
    end
  end

  def update
    if @products_list.update(products_list_params)
      redirect_to @products_list, notice: 'Products list was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @products_list.destroy
    redirect_to products_lists_url, notice: 'Products list was successfully destroyed.'
  end

  private

  def set_products_list
    @products_list = ProductsList.find(params[:id])
  end

  def products_list_params
    params.require(:products_list).permit(
      :name, productization_attributes: [:id, :product_id, :_destroy]
    )
  end
end
