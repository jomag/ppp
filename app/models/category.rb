class Category < ActiveRecord::Base
  has_many :parts
  has_many :category_attributes
  has_many :part_attributes, :through => :category_attributes

  accepts_nested_attributes_for :category_attributes
  accepts_nested_attributes_for :part_attributes
end
