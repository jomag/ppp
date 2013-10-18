class PartAttribute < ActiveRecord::Base
  has_many :part_values
  has_many :parts, :through => :part_values
end
