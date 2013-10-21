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

  form :html => {} do |f|
    f.inputs "Category" do
      f.input :name
      f.has_many :category_attributes, heading: 'Attributes' do |ff|
        ff.input :part_attribute
      end
    end
    f.actions
  end

  controller do
    def permitted_params
      params.permit :category => [:name,
                                  :category_attributes_attributes => [:part_attribute_id]]
    end
  end
end
