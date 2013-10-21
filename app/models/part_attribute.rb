class PartAttribute < ActiveRecord::Base
  has_many :part_values
  has_many :parts, :through => :part_values

  has_many :category_attributes
  has_many :categories, :through => :category_attributes

  accepts_nested_attributes_for :categories
  accepts_nested_attributes_for :parts
end
