class IngredientPropertyValue < ActiveRecord::Base
  belongs_to :ingredient
  belongs_to :property_value
end
