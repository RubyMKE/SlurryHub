class PropertyValue < ActiveRecord::Base
  belongs_to :property_type
  has_many :ingredients, through: :ingredient_property_values
end
