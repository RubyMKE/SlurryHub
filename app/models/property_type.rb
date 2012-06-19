class PropertyType < ActiveRecord::Base
  has_many :property_values
end
