require 'test_helper'

class CarIDsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @car_id = car_ids(:one)
  end

  test "should get index" do
    get car_ids_url
    assert_response :success
  end

  test "should get new" do
    get new_car_id_url
    assert_response :success
  end

  test "should create car_id" do
    assert_difference('CarId.count') do
      post car_ids_url, params: { car_id: { Color: @car_id.Color, LicencePlate: @car_id.LicencePlate, Make: @car_id.Make, Model: @car_id.Model, Year: @car_id.Year } }
    end

    assert_redirected_to car_id_url(CarId.last)
  end

  test "should show car_id" do
    get car_id_url(@car_id)
    assert_response :success
  end

  test "should get edit" do
    get edit_car_id_url(@car_id)
    assert_response :success
  end

  test "should update car_id" do
    patch car_id_url(@car_id), params: { car_id: { Color: @car_id.Color, LicencePlate: @car_id.LicencePlate, Make: @car_id.Make, Model: @car_id.Model, Year: @car_id.Year } }
    assert_redirected_to car_id_url(@car_id)
  end

  test "should destroy car_id" do
    assert_difference('CarId.count', -1) do
      delete car_id_url(@car_id)
    end

    assert_redirected_to car_ids_url
  end
end
