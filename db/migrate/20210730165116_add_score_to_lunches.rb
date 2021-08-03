class AddScoreToLunches < ActiveRecord::Migration[5.1]
  def change
    add_column :lunches, :score, :integer
  end
end
