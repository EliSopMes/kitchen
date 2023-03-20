class AddColumnsToRecipes < ActiveRecord::Migration[7.0]
  def change
    add_column :recipes, :baking_time, :integer
    add_column :recipes, :oven_degrees, :integer
    add_column :recipes, :heat, :string
  end
end
