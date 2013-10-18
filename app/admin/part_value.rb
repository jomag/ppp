ActiveAdmin.register PartValue do
  controller do
    def permitted_params
      params.permit(:part_value => [ :part_id, :attribute_id, :value ])
    end
  end
end
