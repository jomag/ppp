ActiveAdmin.register_page "Dashboard" do

  menu :priority => 1, :label => proc{ I18n.t("active_admin.dashboard") }

  content :title => proc{ I18n.t("active_admin.dashboard") } do
    columns do
      column do
        panel "Recently updated parts" do
          ul do
            Part.recent(5).map do |part|
              li link_to(part.name, admin_category_part_path(part.category, part))
            end
          end
        end
      end

      column do
        panel "Info" do
          para "Welcome to Parts, parts, parts!"
        end
      end
    end
  end
end
