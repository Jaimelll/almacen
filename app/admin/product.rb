ActiveAdmin.register Product do

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end
permit_params :nombre, :descripcion, :precio,
     :moneda, :unidad, :client_id,
     :material, :lote, :proceso, :equivalente,
     :conversion, :peso, :activo, :user_id,
     :created_at, :updated_at

scope :all, :default => true
scope :procesos do |products|
  products.where("proceso = 3")
end

filter :nombre
filter :proceso

index do
  column("nombre", :sortable => :nombre) {|product|
    link_to "#{product.nombre} ", admin_product_path(product) }
  column("descripcion")
  column("proceso")

    actions
end

form do |f|

  f.inputs "Products" do
    f.input :nombre
    f.input :descripcion
    f.input :proceso
    f.input :activo

  end

    f.actions
    
end




    show do
      panel "Formula" do
        table_for(product.formulas) do |t|
          t.column("descripcion", :sortable => :descripcion) {|formula|
             link_to "#{formula.descripcion} ",  admin_product_formula_path(product,formula) }
          t.column("cantidad")
          t.column("orden")

        end

      end


  end






end
