class CreateIngredientPropertyTypes < ActiveRecord::Migration
  def change
    create_table :ingredient_property_types do |t|
      t.integer :ingredient_type_id
      t.integer :property_type_id

      t.timestamps
    end
  end
end
