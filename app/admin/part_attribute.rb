ActiveAdmin.register PartAttribute do
  belongs_to :part

  controller do
    def permitted_params
      params.permit(:part_attribute => [ :name ])
    end
  end
end
