class RemoveSurnameFromCustomers < ActiveRecord::Migration
  def change
    remove_column :customers, :surname, :string
  end
end
