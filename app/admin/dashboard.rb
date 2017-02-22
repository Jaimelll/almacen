ActiveAdmin.register_page "Dashboard" do

  menu priority: 1, label: proc{ I18n.t("active_admin.dashboard") }

  content title: proc{ I18n.t("active_admin.dashboard") } do
    div class: "blank_slate_container", id: "dashboard_default_message" do
      span class: "blank_slate" do
        span I18n.t("active_admin.dashboard_welcome.welcome")
        small I18n.t("active_admin.dashboard_welcome.call_to_action")
      end
    end
strong { link_to "IR AL SISTEMA", root_path }
br
br
strong { "Periodo:"+Parameter.find_by_id(1).mes.strftime("%b/%Y")}
br
br
case Parameter.find_by_id(1).origen
  when 1
     strong { "Registro de Compras-"}


     case Parameter.find_by_id(1).empresa
        when 1
         strong { "Altamirano"}
        when 2
        strong { "Confecciones"}
      end
      strong { link_to 'generar pdf', variables_form_path(format: :pdf)}
  when 2
      strong { "Registro de Ventas-"}
    case Parameter.find_by_id(1).empresa
       when 1
      strong { "Altamirano"}
       when 2
      strong { "Confecciones"}
    end
     strong { link_to 'generar pdf', variables_form_path(format: :pdf)}
end


br

br
strong { link_to 'ver pdf reporte2', variables_comment_path(format: :pdf)}

    # Here is an example of a simple dashboard with columns and panels.
    #
    # columns do
    #   column do
    #     panel "Recent Posts" do
    #       ul do
    #         Post.recent(5).map do |post|
    #           li link_to(post.title, admin_post_path(post))
    #         end
    #       end
    #     end
    #   end

    #   column do
    #     panel "Info" do
    #       para "Welcome to ActiveAdmin."
    #     end
    #   end
    # end
  end # content
end
