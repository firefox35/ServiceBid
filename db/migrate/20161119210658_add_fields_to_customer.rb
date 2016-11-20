class AddFieldsToCustomer < ActiveRecord::Migration
  def change
    add_column :customers, :firstname, :string
    add_column :customers, :surname, :string
    add_column :customers, :address, :string
    add_column :customers, :phone, :integer
  end
end
