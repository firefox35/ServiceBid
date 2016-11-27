class AddCustomerEmailToBookingConfirmation < ActiveRecord::Migration
  def change
    add_column :booking_confirmations, :customer_email, :string
  end
end
