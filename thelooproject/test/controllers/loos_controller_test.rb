require 'test_helper'

class LoosControllerTest < ActionController::TestCase
  setup do
    @loo = loos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:loos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create loo" do
    assert_difference('Loo.count') do
      post :create, loo: { closing_hours: @loo.closing_hours, description: @loo.description, genders: @loo.genders, lat: @loo.lat, lng: @loo.lng, managed_by: @loo.managed_by, name: @loo.name, no_of_bathrooms: @loo.no_of_bathrooms, no_of_toilets: @loo.no_of_toilets, no_of_urinals: @loo.no_of_urinals, open_closing_note: @loo.open_closing_note, open_hours: @loo.open_hours, paid: @loo.paid, type: @loo.type }
    end

    assert_redirected_to loo_path(assigns(:loo))
  end

  test "should show loo" do
    get :show, id: @loo
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @loo
    assert_response :success
  end

  test "should update loo" do
    patch :update, id: @loo, loo: { closing_hours: @loo.closing_hours, description: @loo.description, genders: @loo.genders, lat: @loo.lat, lng: @loo.lng, managed_by: @loo.managed_by, name: @loo.name, no_of_bathrooms: @loo.no_of_bathrooms, no_of_toilets: @loo.no_of_toilets, no_of_urinals: @loo.no_of_urinals, open_closing_note: @loo.open_closing_note, open_hours: @loo.open_hours, paid: @loo.paid, type: @loo.type }
    assert_redirected_to loo_path(assigns(:loo))
  end

  test "should destroy loo" do
    assert_difference('Loo.count', -1) do
      delete :destroy, id: @loo
    end

    assert_redirected_to loos_path
  end
end
