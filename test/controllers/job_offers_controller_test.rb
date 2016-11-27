require 'test_helper'

class JobOffersControllerTest < ActionController::TestCase
  setup do
    @job_offer = job_offers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:job_offers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create job_offer" do
    assert_difference('JobOffer.count') do
      post :create, job_offer: { bid_id: @job_offer.bid_id, booking_confirmation_id: @job_offer.booking_confirmation_id, car_make: @job_offer.car_make, car_model: @job_offer.car_model, customer_address: @job_offer.customer_address, customer_id: @job_offer.customer_id, customer_id: @job_offer.customer_id, customer_name: @job_offer.customer_name, customer_phone_number: @job_offer.customer_phone_number, date: @job_offer.date, dealer_id: @job_offer.dealer_id, issue: @job_offer.issue, payment_id: @job_offer.payment_id, year: @job_offer.year }
    end

    assert_redirected_to job_offer_path(assigns(:job_offer))
  end

  test "should show job_offer" do
    get :show, id: @job_offer
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @job_offer
    assert_response :success
  end

  test "should update job_offer" do
    patch :update, id: @job_offer, job_offer: { bid_id: @job_offer.bid_id, booking_confirmation_id: @job_offer.booking_confirmation_id, car_make: @job_offer.car_make, car_model: @job_offer.car_model, customer_address: @job_offer.customer_address, customer_id: @job_offer.customer_id, customer_id: @job_offer.customer_id, customer_name: @job_offer.customer_name, customer_phone_number: @job_offer.customer_phone_number, date: @job_offer.date, dealer_id: @job_offer.dealer_id, issue: @job_offer.issue, payment_id: @job_offer.payment_id, year: @job_offer.year }
    assert_redirected_to job_offer_path(assigns(:job_offer))
  end

  test "should destroy job_offer" do
    assert_difference('JobOffer.count', -1) do
      delete :destroy, id: @job_offer
    end

    assert_redirected_to job_offers_path
  end
end
