class AddAddressToLunches < ActiveRecord::Migration[5.1]
  def change
    add_column :lunches, :address, :string
  end
end
