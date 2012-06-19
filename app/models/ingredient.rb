class Ingredient < ActiveRecord::Base
  has_many :property_values, through: :ingredient_property_values
end
