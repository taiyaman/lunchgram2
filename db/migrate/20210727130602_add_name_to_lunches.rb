class AddNameToLunches < ActiveRecord::Migration[5.1]
  def change
    add_column :lunches, :name, :string
  end
end
