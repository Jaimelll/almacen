ActiveAdmin.register Item do

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
ActiveAdmin.register Detail do
belongs_to :item
end


action_item :view, only: :show do
  link_to 'Ir a Detalles', admin_item_details_path(params[:id])
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
menu priority: 2, label: "Partes"


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




index :title => 'Partes' do

  column("NoParte", :sortable => :id) {|item|
      link_to "#{item.id} ", admin_item_details_path(item) }
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


    actions



end

form :title => 'Edicion Parte'  do |f|

    f.inputs  do


       f.input :pfecha,:as =>:string, :input_html => { :rows => 2,:style =>  'width:30%'}
       f.input :serie, :input_html => { :rows => 2,:style =>  'width:30%'}
       f.input :nfactu, :input_html => { :rows => 2,:style =>  'width:30%'}
       f.input :client_id, :label => 'Centro', :as => :select, :collection =>
         Client.all.order('razon ASC').map{|u| ["#{u.razon.capitalize}---RUC#{u.ruc}",
           u.id]}, :input_html => { :style =>  'width:50%'}
       f.input :moneda, :label => 'Moneda', :as => :select, :collection =>
           Formula.where(product_id:8).map{|u| [u.descripcion, u.orden]}
       f.input :tc,:as =>:string, :input_html => { :rows => 2,:style =>  'width:30%'}
       f.input :origen, :input_html => { :value => Parameter.find_by_id(1).origen }, :as => :hidden
       f.input :mmes,:as =>:string, :input_html => { :value => Parameter.find_by_id(1).mes }, :as => :hidden
       f.input :empresa, :input_html => { :value => Parameter.find_by_id(1).empresa }, :as => :hidden
       f.input :user_id, :input_html => { :value => current_user.id }, :as => :hidden
       f.input :subtotal, :input_html => { :value => 0}, :as => :hidden


        f.actions
    end
  end





show :title => ' Parte'  do


          attributes_table do

            row :pfecha
            row :serie
            row :nfactu
            row :Centro do |item|
              item.client.razon.capitalize if item.client
            end
            row :subtotal
            row :origen do |item|
              Formula.where(product_id:11,orden:item.origen).
                   select('descripcion as dd').first.dd
             end
            row :mmes
            row :moneda do |item|
              Formula.where(product_id:8,orden:item.moneda).
                   select('descripcion as dd').first.dd
             end
            row :tc

            row :empresa do |item|
              Formula.where(product_id:10,orden:item.empresa).
                   select('descripcion as dd').first.dd
             end


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
