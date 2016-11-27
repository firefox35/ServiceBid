class AddAddressToDealer < ActiveRecord::Migration
  def change
    add_column :dealers, :address, :string
  end
end
