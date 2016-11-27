class RemoveDealerAddressFromDealer < ActiveRecord::Migration
  def change
    remove_column :dealers, :dealer_, :string
    remove_column :dealers, :address, :string
  end
end
