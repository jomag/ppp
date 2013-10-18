ActiveAdmin.register Part do
  controller do
    def permitted_params
      params.permit(:part => [:reference, :name, :category_id])
    end      
  end
end
