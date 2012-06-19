class IngredientType < ActiveRecord::Base
  has_many :ingredients
  has_many :ingredient_types, through: :ingredient_property_types
end
