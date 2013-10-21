class Part < ActiveRecord::Base
  belongs_to :category

  has_many :part_values
  has_many :part_attributes, :through => :part_values

  accepts_nested_attributes_for :part_values

  scope :recent, ->(n) { order('updated_at DESC').limit(n) }

  def part_value(attr)
    v = self.part_values.where(:part_attribute_id => attr.id).first
    if v then
      v.value
    else
      nil
    end
  end
end
