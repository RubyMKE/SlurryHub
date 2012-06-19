class CreateIngredientPropertyValues < ActiveRecord::Migration
  def change
    create_table :ingredient_property_values do |t|
      t.integer :ingredient_id
      t.integer :property_value_id

      t.timestamps
    end
  end
end
