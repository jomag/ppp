ActiveAdmin.register Category do
  # Don't display filter sidebar for category index
  config.filters = false

  # Don't display any batch actions
  config.batch_actions = false

  index :download_links => false do
    column "Name" do |category|
      link_to(category.name, admin_category_parts_path(category)) +
        " (#{category.parts.count})"
    end
    actions
  end

  controller do
    def permitted_params
      params.permit(:category => [:name])
    end
  end
end
