class BookingConfirmationsController < ApplicationController
  before_action :set_booking_confirmation, only: [:show, :edit, :update, :destroy]

  # GET /booking_confirmations
  # GET /booking_confirmations.json
  def index
    @booking_confirmations = BookingConfirmation.all
  end

  # GET /booking_confirmations/1
  # GET /booking_confirmations/1.json
  def show
  end

  # GET /booking_confirmations/new
  def new
    @booking_confirmation = BookingConfirmation.new
  end

  # GET /booking_confirmations/1/edit
  def edit
  end

  # POST /booking_confirmations
  # POST /booking_confirmations.json
  def create
    @booking_confirmation = BookingConfirmation.new(booking_confirmation_params)

    respond_to do |format|
      if @booking_confirmation.save
        format.html { redirect_to @booking_confirmation, notice: 'Booking confirmation was successfully created.' }
        format.json { render :show, status: :created, location: @booking_confirmation }
      else
        format.html { render :new }
        format.json { render json: @booking_confirmation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /booking_confirmations/1
  # PATCH/PUT /booking_confirmations/1.json
  def update
    respond_to do |format|
      if @booking_confirmation.update(booking_confirmation_params)
        format.html { redirect_to @booking_confirmation, notice: 'Booking confirmation was successfully updated.' }
        format.json { render :show, status: :ok, location: @booking_confirmation }
      else
        format.html { render :edit }
        format.json { render json: @booking_confirmation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /booking_confirmations/1
  # DELETE /booking_confirmations/1.json
  def destroy
    @booking_confirmation.destroy
    respond_to do |format|
      format.html { redirect_to booking_confirmations_url, notice: 'Booking confirmation was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_booking_confirmation
      @booking_confirmation = BookingConfirmation.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def booking_confirmation_params
      params.require(:booking_confirmation).permit(:job_offer_id, :customer_name, :customer_address, :customer_phone_number, :dealer_name, :dealer_address, :dealer_phone_number, :date, :time)
    end
end
