ActiveAdmin.register_page "Dashboard" do




  menu priority: 1, label: proc{ I18n.t("active_admin.dashboard") }


  content title: proc{ I18n.t("active_admin.dashboard") } do









br
strong { "Periodo:"+Parameter.find_by_id(1).mes.strftime("%b/%Y")}
br
br
case Parameter.find_by_id(1).origen
  when 1
     strong { "Registro de Compras-"}
     strong { Formula.where(product_id:10).where(orden:Parameter.find_by_id(1).empresa).
                 select('descripcion as dd').first.dd.capitalize}
     strong { link_to 'generar pdf', variables_form_path(format: :pdf)}
  when 2
    strong { "Registro de Ventas-"}
    strong { Formula.where(product_id:10).where(orden:Parameter.find_by_id(1).empresa).
                   select('descripcion as dd').first.dd.capitalize}
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
