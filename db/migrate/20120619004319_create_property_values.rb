class CreatePropertyValues < ActiveRecord::Migration
  def change
    create_table :property_values do |t|
      t.string :name
      t.integer :property_type_id

      t.timestamps
    end
  end
end
