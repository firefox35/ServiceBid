class CreateBookingConfirmations < ActiveRecord::Migration
  def change
    create_table :booking_confirmations do |t|
      t.integer :job_offer_id
      t.string :customer_name
      t.string :customer_address
      t.integer :customer_phone_number
      t.string :dealer_name
      t.string :dealer_address
      t.integer :dealer_phone_number
      t.date :date
      t.time :time

      t.timestamps null: false
    end
  end
end
