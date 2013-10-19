ActiveAdmin.register Part do
  belongs_to :category

  index :download_links => false do
    column "Reference", :sortable => :reference do |p|
      link_to p.reference, admin_category_part_path(p.category, p)
    end
    column "Name", :name
    actions
  end

  form :html => {} do |f|
    f.inputs "Part" do
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
      params.permit(:part => [:reference, :name, :category_id])
    end      
  end
end
