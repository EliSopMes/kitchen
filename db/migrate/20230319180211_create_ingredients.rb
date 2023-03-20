class CreateIngredients < ActiveRecord::Migration[7.0]
  def change
    create_table :ingredients do |t|
      t.string :title
      t.integer :scale, :default => 0
      t.integer :amount
      t.references :recipe, null: false, foreign_key: true
      t.timestamps
    end
  end
end
