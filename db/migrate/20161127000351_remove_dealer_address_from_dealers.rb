class RemoveDealerAddressFromDealers < ActiveRecord::Migration
  def change
    remove_column :dealers, :dealer_address, :string
  end
end
