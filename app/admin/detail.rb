ActiveAdmin.register Detail do

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
action_item :view, only: :show do
  link_to 'Ir a Partes', admin_items_path()
end



menu false
permit_params :descripcion, :cantidad,:precio, :monto,:item_id,
            :user_id, :product_id

            form do |f|
            if params[:id] then
                n1=Detail.where(id:params[:id]).
                         select('item_id as dd').first.dd.to_i
                 nn=Item.where(id:n1).
                          select('id as dd').first.dd.to_s
               f.inputs "ParteNo= #{nn}" do

                 f.input :item_id, :label => 'Parte'
                 f.input :product_id, :label => 'Producto', :as => :select, :collection =>
                        Product.all.order('nombre ASC').map{|u| [u.nombre, u.id]}
                 f.input :descripcion, :input_html => { :rows => 2,:style =>  'width:30%'}
                 f.input :cantidad,:as =>:string, :input_html => { :style =>  'width:30%'}
                 f.input :precio,:as =>:string, :input_html => { :style =>  'width:30%'}

                 f.input :user_id, :input_html => { :value => current_user.id }, :as => :hidden

                 end
                f.actions
            else

                 nn=Item.where(id:params[:item_id]).
                          select('id as dd').first.dd.to_s
              f.inputs "ParteNo= #{nn}" do

                f.input :item_id, :label => 'Parte' ,
                         :input_html => { :value => params[:item_id]}
                f.input :product_id, :label => 'Producto', :as => :select, :collection =>
                          Product.all.order('nombre ASC').map{|u| [u.nombre, u.id]}
                f.input :descripcion, :input_html => { :rows => 2,:style =>  'width:30%'}
                f.input :cantidad,:as =>:string, :input_html => {:value =>1, :style =>  'width:30%'}
                f.input :precio,:as =>:string, :input_html => { :style =>  'width:30%'}
                f.input :monto,:as =>:string, :input_html => {:value =>0, :style =>  'width:30%'}, :as => :hidden
                f.input :user_id, :input_html => { :value => current_user.id }, :as => :hidden

               end
               f.actions
            end
          end


      show do

          panel "Detalle de parte" do
          attributes_table do
            row :item_id do |detail|
              link_to "Parte-#{detail.item_id}", admin_item_path(detail.item_id)
            end
            row :product_id do |detail|
                 if detail.product_id then
                   Product.where(id:detail.product_id).select('nombre as dd').first.dd.to_s

                 end
              end
            row :descripcion
            row :cantidad
            row :precio
            row :actualiMonto do |detail|
              detail.edit_monto
            end
            row :actualiSubtotal do |detail|
            Item.where(id:detail.item_id).update(subtotal:Detail.where(item_id:detail.item_id).sum(:monto))
            end
            row :monto
            row :updated_at
            row :create_at



            end

            end






      end




      end
