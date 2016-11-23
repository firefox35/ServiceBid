class RemoveNameFromDealers < ActiveRecord::Migration
  def change
    remove_column :dealers, :name, :string
  end
end
