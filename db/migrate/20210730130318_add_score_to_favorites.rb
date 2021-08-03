class AddScoreToFavorites < ActiveRecord::Migration[5.1]
  def change
    add_column :favorites, :score, :integer
  end
end
