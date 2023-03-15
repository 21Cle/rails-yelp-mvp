class ChangeCategoryToRestaurants < ActiveRecord::Migration[7.0]
  def change
    change_column :restaurants, :category, :string
  end
end
