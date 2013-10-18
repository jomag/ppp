ActiveAdmin.register PartAttribute do
  controller do
    def permitted_params
      params.permit(:part_attribute => [ :name ])
    end
  end
end
