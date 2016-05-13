require 'test_helper'

class SellersControllerTest < ActionController::TestCase
  setup do
    @seller = sellers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sellers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create seller" do
    assert_difference('Seller.count') do
      post :create, seller: { dateinscription: @seller.dateinscription, inscription: @seller.inscription, lastnamec: @seller.lastnamec, lastnamev: @seller.lastnamev, namec: @seller.namec, namev: @seller.namev, user_id: @seller.user_id }
    end

    assert_redirected_to seller_path(assigns(:seller))
  end

  test "should show seller" do
    get :show, id: @seller
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @seller
    assert_response :success
  end

  test "should update seller" do
    patch :update, id: @seller, seller: { dateinscription: @seller.dateinscription, inscription: @seller.inscription, lastnamec: @seller.lastnamec, lastnamev: @seller.lastnamev, namec: @seller.namec, namev: @seller.namev, user_id: @seller.user_id }
    assert_redirected_to seller_path(assigns(:seller))
  end

  test "should destroy seller" do
    assert_difference('Seller.count', -1) do
      delete :destroy, id: @seller
    end

    assert_redirected_to sellers_path
  end
end
