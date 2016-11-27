class AddDealerAddressToDealer < ActiveRecord::Migration
  def change
    add_column :dealers, :dealer_, :string
    add_column :dealers, :address, :varchar
  end
end
