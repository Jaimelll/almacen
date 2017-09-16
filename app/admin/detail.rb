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
action_item :view, only: :index do
  link_to 'Ir a Parte', admin_item_path(params[:item_id])
end




permit_params :descripcion, :cantidad,:precio, :monto,:item_id,
            :user_id, :product_id


filter :descripcion

index do

  column("descripcion")
  column("cantidad")
  column("precio")
  column("monto")

    actions
end


            form do |f|


               f.inputs  do


                 f.input :product_id, :label => 'Producto', :as => :select, :collection =>
                        Product.all.order('nombre ASC').map{|u| [u.nombre, u.id]}
                 f.input :descripcion, :input_html => { :rows => 2,:style =>  'width:30%'}
                 f.input :cantidad,:as =>:string, :input_html => { :style =>  'width:30%'}
                 f.input :precio,:as =>:string, :input_html => { :style =>  'width:30%'}
                 f.input :monto,:as =>:string, :input_html => {:value =>0, :style =>  'width:30%'}, :as => :hidden
                 f.input :user_id, :input_html => { :value => current_user.id }, :as => :hidden



               f.actions
            end
          end


      show do

         Item.where(id:params[:item_id]).update(subtotal:Detail.where(item_id:params[:item_id]).sum(:monto))


          attributes_table do
            row :item_id do |detail|
              link_to "Parte-#{detail.item_id}", admin_item_path(detail.item_id)
            end
            row :product_id do |detail|
                   Detail.where(id:params[:id]).update(monto:detail.cantidad*detail.precio)
                 if detail.product_id then

                   Product.where(id:detail.product_id).select('nombre as dd').first.dd.to_s

                 end
              end
            row :descripcion
            row :cantidad
            row :precio
            row :monto
            row :updated_at
            row :create_at
            end

      end

      sidebar "Datos de Parte" do
        Item.where(id:params[:item_id]).each do |item|

            ul do

                li   strong {'Fecha='+item.pfecha.to_s}
                li   strong {'Serie='+item.serie}
                li  strong {'Factura='+item.nfactu}
               li  strong {'Centro='+  item.client.razon.capitalize if item.client}


            end
            ul do

              li   strong {'Subtotal='+'%.2f' %(item.subtotal).to_s}
              li   strong {'IGV='+'%.2f' %(item.subtotal*0.18).to_s}
              li  strong {'TOTAL='+'%.2f' %(item.subtotal*1.18).to_s}


            end

          end #each
       end# de sider








      end
