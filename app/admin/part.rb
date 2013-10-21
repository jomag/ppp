ActiveAdmin.register Part do
  belongs_to :category

  index :download_links => false do
    column "Reference", :sortable => :reference do |p|
      link_to p.reference, admin_category_part_path(p.category, p)
    end
    column "Name", :name
    category.part_attributes.each do |a|
      column a.name do |part|
        part.part_value a
      end
    end
    actions
  end

  form :html => {} do |f|
    f.inputs "Part" do
      f.input :name
      f.input :reference
    end
    f.has_many :part_values do |vf|
      vf.input :part_attribute
      vf.input :value
    end
    f.buttons
  end

  controller do
    def permitted_params
      params.permit :part => [:reference, :category_id, :name, :category_id,
                              :part_values_attributes => [ :id, :part_attribute_id, :value ] ]
    end      
  end
end
