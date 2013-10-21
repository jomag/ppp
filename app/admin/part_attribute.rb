ActiveAdmin.register PartAttribute do
  belongs_to :part
  belongs_to :category

  controller do
    def permitted_params
      params.permit(:part_attribute => [ :name ])
    end
  end
end
