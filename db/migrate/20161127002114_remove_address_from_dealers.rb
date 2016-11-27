class RemoveAddressFromDealers < ActiveRecord::Migration
  def change
    remove_column :dealers, :address, :string
  end
end
