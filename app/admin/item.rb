ActiveAdmin.register Item do

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
action_item :view, only: :show do
  link_to 'Ir a Partes', admin_items_path
end




permit_params :pfecha, :serie,:nfactu, :client_id,:subtotal,
              :origen, :mmes, :moneda, :tc, :user_id,
              :created_at, :updated_at, :empresa
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end
menu priority: 4, label: "Partes"


scope :MesActivo, :default => true do |items|
  items.where(origen:Parameter.find_by_id(1).origen,mmes:Parameter.find_by_id(1).mes,empresa:Parameter.find_by_id(1).empresa).order('pfecha ASC','serie','nfactu')
end
scope :Anulados, :default => true do |items|
  items.where(origen:Parameter.find_by_id(1).origen,mmes:Parameter.find_by_id(1).mes,empresa:Parameter.find_by_id(1).empresa).where(client_id:1).order('pfecha ASC','serie','nfactu')
end
scope :NoAnulados, :default => true do |items|
  items.where(origen:Parameter.find_by_id(1).origen,mmes:Parameter.find_by_id(1).mes,empresa:Parameter.find_by_id(1).empresa).where.not(client_id:1).order('pfecha ASC','serie','nfactu')
end

filter :pfecha, label:'Fecha'
filter :serie
filter :nfactu, label:'Factura'
filter :client_id, :label => 'Centro', :as => :select, :collection =>
        Client.all.order('razon ASC').map{|u| ["#{u.razon.capitalize}---RUC#{u.ruc}", u.id]}




index do

  column("NoParte", :sortable => :id) {|item|
    link_to "#{item.id} ", admin_item_path(item) }
  column("Fecha", :pfecha)
  column("serie")
  column("factura", :nfactu)
  column("RUC", :client_id) do |item|
   item.client.ruc if item.client
  end
  column("Centro", :client_id) do |item|
    item.client.razon.capitalize if item.client
  end
    column("subtotal") do |item|
    div :class => 'sub' do
      '%.2f' %(item.subtotal) if item.subtotal
        end

  end
    column("tc")


    actions  do |item|
        Detail.where(item_id:item.id).count==0

        end




end

 form do |f|

    f.inputs "Items" do

     if params[:id] then
       f.input :pfecha,:as =>:string
       f.input :serie
       f.input :nfactu
       f.input :client_id, :label => 'Centro', :as => :select, :collection =>
         Client.all.order('razon ASC').map{|u| ["#{u.razon.capitalize}---RUC#{u.ruc}",
           u.id]}, :input_html => { :style =>  'width:50%'}
       f.input :moneda, :label => 'Moneda', :as => :select, :collection =>
           Formula.where(product_id:8).map{|u| [u.descripcion, u.orden]}
       f.input :tc,:as =>:string


     else
        f.input :pfecha,:as =>:string, :input_html => { :value => Parameter.find_by_id(1).mes }
        f.input :serie, :input_html => { :value => f.object.set_serie }
        f.input :nfactu, :input_html => { :value => f.object.set_nfactu }
        f.input :client_id, :label => 'Centro', :as => :select, :collection =>
          Client.all.order('razon ASC').map{|u| ["#{u.razon.capitalize}---RUC#{u.ruc}",
            u.id]}, :input_html => { :style =>  'width:50%'}
        f.input :moneda, :label => 'Moneda', :as => :select, :collection =>
            Formula.where(product_id:8).map{|u| [u.descripcion, u.orden]}
        f.input :tc,:as =>:string
        f.input :origen, :input_html => { :value => Parameter.find_by_id(1).origen }, :as => :hidden
        f.input :mmes,:as =>:string, :input_html => { :value => Parameter.find_by_id(1).mes }, :as => :hidden
        f.input :empresa, :input_html => { :value => Parameter.find_by_id(1).empresa }, :as => :hidden
        f.input :user_id, :input_html => { :value => current_user.id }, :as => :hidden
        f.input :subtotal, :input_html => { :value => 0}, :as => :hidden
      end
        f.actions
    end
  end





  show do

   nn=Item.where(id:params[:id]).
          select('id as dd').first.dd.to_s

    panel "Parte No #{nn}" do
      table_for(item.details.order('id ASC')) do |t|

        t.column("Detalle No", :sortable => :id) {|detail|
           link_to "#{detail.id} ",  admin_item_detail_path(item,detail) }
        t.column("descripcion")
        t.column("producto") do |detail|
          if detail.product_id then
            Product.where(id:detail.product_id).select('nombre as dd').first.dd.to_s

          end
        end
        t.column("cantidad")
        t.column("precio")
        t.column("monto")


      end

    end

    strong { link_to 'Agregar detalle', new_admin_item_detail_path(item) }


    if Parameter.find_by_id(1).origen<5  then
  br
  br  
    li  strong {'Subtotal='+'%.2f' % (item.subtotal) }
    li  strong {'IGV='+'%.2f' % (item.subtotal*0.18) }
    li  strong {'TOTAL='+'%.2f' % (item.subtotal*1.18) }

    end

  end
















sidebar "Parametros" do
  ul do
      li Formula.where(product_id:11).where(orden:Parameter.find_by_id(1).origen).
                    select('descripcion as dd').first.dd.capitalize+"-"+

      Formula.where(product_id:10).where(orden:Parameter.find_by_id(1).empresa).
                    select('descripcion as dd').first.dd.capitalize+"-"+
      Parameter.find_by_id(1).mes.strftime("%B")+"/"+Parameter.find_by_id(1).mes.strftime("%Y")
      li "Registros="+
     Item.where(origen:Parameter.find_by_id(1).origen,mmes:Parameter.find_by_id(1).mes,empresa:Parameter.find_by_id(1).empresa).count('Id').to_s
      li "Subtotal="+
    '%.2f' %( Item.where(origen:Parameter.find_by_id(1).origen,mmes:Parameter.find_by_id(1).mes,empresa:Parameter.find_by_id(1).empresa).sum('subtotal')).to_s+
    "--IGV="+
    '%.2f' %( Item.where(origen:Parameter.find_by_id(1).origen,mmes:Parameter.find_by_id(1).mes,empresa:Parameter.find_by_id(1).empresa).sum('subtotal*0.18')).to_s
    li "Total="+
    '%.2f' %( Item.where(origen:Parameter.find_by_id(1).origen,mmes:Parameter.find_by_id(1).mes,empresa:Parameter.find_by_id(1).empresa).sum('subtotal*1.18')).to_s
    end
  end




end
