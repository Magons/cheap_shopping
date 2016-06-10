require 'test_helper'

class ProductsListsControllerTest < ActionController::TestCase
  setup do
    @products_list = products_lists(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:products_lists)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create products_list" do
    assert_difference('ProductsList.count') do
      post :create, products_list: { name: @products_list.name }
    end

    assert_redirected_to products_list_path(assigns(:products_list))
  end

  test "should show products_list" do
    get :show, id: @products_list
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @products_list
    assert_response :success
  end

  test "should update products_list" do
    patch :update, id: @products_list, products_list: { name: @products_list.name }
    assert_redirected_to products_list_path(assigns(:products_list))
  end

  test "should destroy products_list" do
    assert_difference('ProductsList.count', -1) do
      delete :destroy, id: @products_list
    end

    assert_redirected_to products_lists_path
  end
end
