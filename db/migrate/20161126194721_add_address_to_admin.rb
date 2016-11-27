class AddAddressToAdmin < ActiveRecord::Migration
  def change
    add_column :admins, :address, :string
  end
end
