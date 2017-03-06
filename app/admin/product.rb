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
menu priority: 3, label: "Productos"

permit_params :nombre, :descripcion, :precio,
     :moneda, :unidad, :client_id,
     :material, :lote, :proceso, :equivalente,
     :conversion, :peso, :activo, :user_id,
     :created_at, :updated_at

scope :all, :default => false

scope :productos do |products|
  products.where("proceso <> 3")
end

scope :procesos do |products|
  products.where("proceso = 3")
end

filter :nombre
filter :proceso

index do
  column("nombre", :sortable => :nombre) {|product|
    link_to "#{product.nombre} ", admin_product_path(product) }
  column("descripcion")
  column("proceso") do |products|
    Formula.where(product_id:7).where(orden:products.proceso).
                select('descripcion as dd').first.dd.capitalize
  end
  column("precio")

    actions
end

form do |f|

  f.inputs "Products" do
        f.input :nombre
        f.input :descripcion
        f.input :precio

        f.input :moneda, :label => 'Moneda', :as => :select, :collection =>
            Formula.where(product_id:8).map{|u| [u.descripcion, u.orden]}
        f.input :unidad, :label => 'Unidad', :as => :select, :collection =>
            Formula.where(product_id:9).map{|u| [u.descripcion, u.orden]}

        f.input :material




     if params[:id] then

        f.input :proceso, :as => :select, :collection =>
                Formula.where(product_id:7).map{|u| [u.descripcion,
                   u.orden]}
        f.input :conversion
        f.input :client_id, :label => 'Centro', :as => :select, :collection =>
                Client.all.order('razon ASC').map{|u| ["#{u.razon}---RUC#{u.ruc}", u.id]}, :input_html => { :style =>  'width:50%'}
        f.input :lote
        f.input :equivalente, :label => 'Equivalente', :as => :select, :collection =>
                Product.all.order('nombre ASC').map{|u| [u.nombre, u.id]}
    else
        f.input :proceso, :input_html => { :value => 1 }, :as => :hidden
        f.input :conversion, :input_html => { :value => 1}, :as => :hidden
        f.input :client_id, :input_html => { :value => 881}, :as => :hidden
        f.input :lote, :input_html => { :value => 1}, :as => :hidden
        f.input :user_id, :input_html => { :value => current_user.id }, :as => :hidden
    end

      f.input :activo
  end



     f.actions

end



    show do
      unless  Product.where(id:params[:id]).
          select('equivalente as dd').first.dd.to_i >=1 then
      Product.where(id:params[:id]).update(equivalente: params[:id])
     end

     nn=Product.where(id:params[:id]).
            select('nombre as dd').first.dd.capitalize

      panel "Formula de #{nn}" do
        table_for(product.formulas.order('orden ASC')) do |t|
          t.column("descripcion", :sortable => :descripcion) {|formula|
             link_to "#{formula.descripcion} ",  admin_product_formula_path(product,formula) }
          t.column("cantidad")
          t.column("orden")


        end

      end

      strong { link_to 'Agregar formula', new_admin_product_formula_path(product) }


  end






end
