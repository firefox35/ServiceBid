require 'test_helper'

class BookingConfirmationsControllerTest < ActionController::TestCase
  setup do
    @booking_confirmation = booking_confirmations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:booking_confirmations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create booking_confirmation" do
    assert_difference('BookingConfirmation.count') do
      post :create, booking_confirmation: { customer_address: @booking_confirmation.customer_address, customer_name: @booking_confirmation.customer_name, customer_phone_number: @booking_confirmation.customer_phone_number, date: @booking_confirmation.date, dealer_address: @booking_confirmation.dealer_address, dealer_name: @booking_confirmation.dealer_name, dealer_phone_number: @booking_confirmation.dealer_phone_number, job_offer_id: @booking_confirmation.job_offer_id, time: @booking_confirmation.time }
    end

    assert_redirected_to booking_confirmation_path(assigns(:booking_confirmation))
  end

  test "should show booking_confirmation" do
    get :show, id: @booking_confirmation
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @booking_confirmation
    assert_response :success
  end

  test "should update booking_confirmation" do
    patch :update, id: @booking_confirmation, booking_confirmation: { customer_address: @booking_confirmation.customer_address, customer_name: @booking_confirmation.customer_name, customer_phone_number: @booking_confirmation.customer_phone_number, date: @booking_confirmation.date, dealer_address: @booking_confirmation.dealer_address, dealer_name: @booking_confirmation.dealer_name, dealer_phone_number: @booking_confirmation.dealer_phone_number, job_offer_id: @booking_confirmation.job_offer_id, time: @booking_confirmation.time }
    assert_redirected_to booking_confirmation_path(assigns(:booking_confirmation))
  end

  test "should destroy booking_confirmation" do
    assert_difference('BookingConfirmation.count', -1) do
      delete :destroy, id: @booking_confirmation
    end

    assert_redirected_to booking_confirmations_path
  end
end
