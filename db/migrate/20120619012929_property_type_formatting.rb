class PropertyTypeFormatting < ActiveRecord::Migration
  def up
    add_column :property_types, :one_or_many, :string
    add_column :property_types, :form_input, :string
  end

  def down
  end
end
