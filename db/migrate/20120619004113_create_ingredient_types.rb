class CreateIngredientTypes < ActiveRecord::Migration
  def change
    create_table :ingredient_types do |t|
      t.string :name

      t.timestamps
    end
  end
end
