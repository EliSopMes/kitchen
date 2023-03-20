class AddColumnFinalToRecipe < ActiveRecord::Migration[7.0]
  def change
    add_column :recipes, :list_final, :boolean, :default => false
  end
end
