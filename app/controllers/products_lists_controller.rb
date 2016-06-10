class ProductsListsController < ApplicationController
  before_action :set_products_list, only: [:show, :edit, :update, :destroy]

  # GET /products_lists
  def index
    @products_lists = ProductsList.all
  end

  # GET /products_lists/1
  def show
  end

  # GET /products_lists/new
  def new
    @products_list = ProductsList.new
  end

  # GET /products_lists/1/edit
  def edit
  end

  # POST /products_lists
  def create
    @products_list = ProductsList.new(products_list_params)

    if @products_list.save
      redirect_to @products_list, notice: 'Products list was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /products_lists/1
  def update
    if @products_list.update(products_list_params)
      redirect_to @products_list, notice: 'Products list was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /products_lists/1
  def destroy
    @products_list.destroy
    redirect_to products_lists_url, notice: 'Products list was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_products_list
      @products_list = ProductsList.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def products_list_params
      params.require(:products_list).permit(:name)
    end
end
