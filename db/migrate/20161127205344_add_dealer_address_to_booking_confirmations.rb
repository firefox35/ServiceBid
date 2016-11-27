class AddDealerAddressToBookingConfirmations < ActiveRecord::Migration
  def change
    add_column :booking_confirmations, :dealer_address, :string
  end
end
