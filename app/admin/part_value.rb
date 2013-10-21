ActiveAdmin.register PartValue do
  belongs_to :part
  controller do
    def permitted_params
      params.permit! # part_value: [ :part_id, :part_attribute_id, :value ]
    end
  end
end
