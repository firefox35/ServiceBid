class CreateBids < ActiveRecord::Migration
  def change
    create_table :bids do |t|
      t.integer :job_offer_id
      t.integer :customer_id
      t.integer :dealer_id
      t.decimal :price

      t.timestamps null: false
    end
  end
end
