class CategoryAttribute < ActiveRecord::Base
  belongs_to :category
  belongs_to :part_attribute
end
