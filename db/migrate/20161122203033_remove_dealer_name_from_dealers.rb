class RemoveDealerNameFromDealers < ActiveRecord::Migration
  def change
    remove_column :dealers, :dealer_name, :string
  end
end
