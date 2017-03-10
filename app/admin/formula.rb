ActiveAdmin.register Formula do

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
menu false
permit_params :product_id, :material, :cantidad,
      :user_id, :created_at, :updated_at,
        :descripcion, :indicacion, :orden



          form do |f|
          if params[:id] then
              n1=Formula.where(id:params[:id]).
                       select('product_id as dd').first.dd.to_i
               nn=Product.where(id:n1).
                        select('nombre as dd').first.dd.capitalize
            f.inputs "PRODUCTO = #{nn}" do
               f.input :product_id, :label => 'Producto', :as => :select, :collection =>
                      Product.all.order('nombre ASC').map{|u| [u.nombre, u.id]}, :as => :hidden
               f.input :material, :label => 'Material', :as => :select, :collection =>
                             Product.all.order('nombre ASC').map{|u| [u.nombre, u.id]}
               f.input :descripcion, :input_html => { :style =>  'width:30%'}

               f.input :cantidad,:as =>:string
               f.input :orden, :input_html => { :style =>  'width:30%'}
               f.input :user_id, :input_html => { :value => current_user.id }, :as => :hidden
               end
              f.actions
          else

               nn=Product.where(id:params[:product_id]).
                        select('nombre as dd').first.dd.capitalize
           f.inputs "PRODUCTO = #{nn}" do
              f.input :product_id, :label => 'Producto' ,
                       :input_html => { :value => params[:product_id]}, :as => :hidden
              f.input :material, :label => 'Material', :as => :select, :collection =>
                                      Product.all.order('nombre ASC').map{|u| [u.nombre, u.id]}
              f.input :descripcion, :input_html => { :style =>  'width:30%'}
              f.input :cantidad,:as =>:string
              f.input :orden, :input_html => { :style =>  'width:30%'}
              f.input :user_id, :input_html => { :value => current_user.id }, :as => :hidden
           end
           f.actions
        end
end
end
