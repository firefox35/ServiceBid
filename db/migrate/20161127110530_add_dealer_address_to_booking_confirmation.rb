class AddDealerAddressToBookingConfirmation < ActiveRecord::Migration
  def change
    add_column :booking_confirmations, :dealer_, :string
    add_column :booking_confirmations, :address, :varchar
  end
end
