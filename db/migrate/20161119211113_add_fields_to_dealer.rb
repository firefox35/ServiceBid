class AddFieldsToDealer < ActiveRecord::Migration
  def change
    add_column :dealers, :dealer_name, :string
    add_column :dealers, :address, :string
    add_column :dealers, :phone, :integer
  end
end
