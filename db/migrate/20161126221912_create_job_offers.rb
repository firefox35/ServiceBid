class CreateJobOffers < ActiveRecord::Migration
  def change
    create_table :job_offers do |t|
      t.string :customer_id
      t.string :customer_name
      t.string :customer_address
      t.integer :customer_phone_number
      t.date :date
      t.string :car_make
      t.string :car_model
      t.date :year
      t.text :issue
      t.references :bid, index: true, foreign_key: true
      t.references :customer, index: true, foreign_key: true
      t.references :dealer, index: true, foreign_key: true
      t.references :payment, index: true, foreign_key: true
      t.references :booking_confirmation, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
