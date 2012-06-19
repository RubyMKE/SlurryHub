class IngredientPropertyType < ActiveRecord::Base
  belongs_to :ingredient_type
  belongs_to :property_type
end
