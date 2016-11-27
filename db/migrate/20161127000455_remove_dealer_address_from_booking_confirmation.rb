class RemoveDealerAddressFromBookingConfirmation < ActiveRecord::Migration
  def change
    remove_column :booking_confirmations, :dealer_address, :string
  end
end
