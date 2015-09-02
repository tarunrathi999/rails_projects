require 'test_helper'

class CityMakersControllerTest < ActionController::TestCase
  setup do
    @city_maker = city_makers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:city_makers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create city_maker" do
    assert_difference('CityMaker.count') do
      post :create, city_maker: { address1: @city_maker.address1, address2: @city_maker.address2, city: @city_maker.city, country: @city_maker.country, description: @city_maker.description, lat: @city_maker.lat, lng: @city_maker.lng, name: @city_maker.name, note: @city_maker.note, phone: @city_maker.phone, state: @city_maker.state, timings: @city_maker.timings }
    end

    assert_redirected_to city_maker_path(assigns(:city_maker))
  end

  test "should show city_maker" do
    get :show, id: @city_maker
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @city_maker
    assert_response :success
  end

  test "should update city_maker" do
    patch :update, id: @city_maker, city_maker: { address1: @city_maker.address1, address2: @city_maker.address2, city: @city_maker.city, country: @city_maker.country, description: @city_maker.description, lat: @city_maker.lat, lng: @city_maker.lng, name: @city_maker.name, note: @city_maker.note, phone: @city_maker.phone, state: @city_maker.state, timings: @city_maker.timings }
    assert_redirected_to city_maker_path(assigns(:city_maker))
  end

  test "should destroy city_maker" do
    assert_difference('CityMaker.count', -1) do
      delete :destroy, id: @city_maker
    end

    assert_redirected_to city_makers_path
  end
end
