class CreatePayments < ActiveRecord::Migration
  def change
    create_table :payments do |t|
      t.boolean :mastercard
      t.boolean :visa
      t.boolean :visa_debit
      t.integer :job_offer_id
      t.string :customer_name
      t.integer :card_number
      t.date :expiry_date
      t.integer :three_digit_pin_number
      t.decimal :amount

      t.timestamps null: false
    end
  end
end
