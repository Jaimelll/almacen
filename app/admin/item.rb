ActiveAdmin.register Item do

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
ActiveAdmin.register Detail do
belongs_to :item
end




action_item :view, only: :show do
  link_to 'Crear nuevo parte', new_admin_item_path()
end

action_item :only=> :index do
  link_to 'Dar Codigo', darcod_admin_parameter_path(1), method: :put
end


action_item :only=> :index do
  link_to   'Venta', venta_admin_parameter_path(1, :@num), method: :put
end

action_item :only=> :index do
  link_to   'Compra', compra_admin_parameter_path(1, :@num), method: :put
end



#### necesario para borrar hijos con el padre agregar _atributes
permit_params :pfecha, :serie,:nfactu, :client_id,:subtotal,
              :origen, :mmes, :moneda, :tc, :user_id,
              :created_at, :updated_at, :empresa, :sele, :sele1, :sele2, :sele3,
              details_attributes: [:id, :descripcion, :cantidad, :precio, :monto, :item_id,
                :user_id, :product_id, :_destroy]    
                
# dar = ParametersController.new   
# vtit=dar.modnomb

menu priority: 2, label: "Comprobante"


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




index :title => "Comprobante" do
 
  column("Codigo", :sortable => :sele) {|selen|  selen.sele }
  column("Fecha", :pfecha)
  column("serie")
  column("Numero", :nfactu)
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

form :title => 'Edicion Comprobante'  do |f|

    f.inputs  do
      
      f.input :pfecha, :label => 'Fecha' , as: :datepicker,
       datepicker_options: { dateFormat: "dd/mm/yy",
          min_date: Parameter.find_by_id(1).mes.beginning_of_month.strftime("%d/%m/%Y"),
          max_date: (Parameter.find_by_id(1)).mes.end_of_month.strftime("%d/%m/%Y") },
        :input_html => { :style =>  'width:30%'}   
      
       f.input :serie, :input_html => { :rows => 2,:style =>  'width:30%'}
       f.input :nfactu, :label => 'Comprobante', :input_html => { :rows => 2,:style =>  'width:30%'}
       f.input :sele1, :label => 'Documento', :as => :select, :collection =>
                Formula.where(product_id:16
                ).map{|u| [u.descripcion, u.orden]}
                
       f.input :client_id, :label => 'Centro', :as => :select, :collection =>
               Client.all.order('ruc ASC').map{|u| ["#{u.ruc}-RUC-#{u.razon.capitalize}",
               u.id]}, :input_html => { :style =>  'width:50%'}
       f.input :moneda, :label => 'Moneda', :as => :select, :collection =>
               Formula.where(product_id:8).map{|u| [u.descripcion, u.orden]}
       f.input :tc,:as =>:string, :input_html => { :rows => 2,:style =>  'width:30%'}
       f.input :sele, :label => 'Codigo', :input_html => { :rows => 2,:style =>  'width:30%'}
       f.input :origen, :input_html => { :value => Parameter.find_by_id(1).origen }, :as => :hidden
       f.input :mmes,:as =>:string, :input_html => { :value => Parameter.find_by_id(1).mes }, :as => :hidden
       f.input :empresa, :input_html => { :value => Parameter.find_by_id(1).empresa }, :as => :hidden
       f.input :user_id, :input_html => { :value => current_user.id }, :as => :hidden
       f.input :subtotal, :input_html => { :value => 0}, :as => :hidden

    end
    f.inputs do
      
      f.has_many :details, heading: 'Detalles',
                              allow_destroy: true,
                              new_record: true do |a|
       
        a.input :product_id, :label => 'Producto', :as => :select, :collection =>
                 Product.all.order('nombre ASC').map{|u| [u.nombre, u.id]}
        a.input :descripcion, :input_html => { :rows => 2,:style =>  'width:30%'}
        a.input :cantidad,:as =>:string, :input_html => { :style =>  'width:30%'}
        a.input :monto,:as =>:string, :input_html => { :style =>  'width:30%'}
        a.input :precio,:as =>:string, :input_html => {:value =>0, :style =>  'width:30%'}, :as => :hidden
        a.input :user_id, :input_html => { :value => current_user.id }, :as => :hidden

      end
    end
        f.actions
  
  end


show :title => ' Comprobante'  do
           attributes_table do
           reporte = ItemsController.new   
           reporte.nota_credito(params[:id])
            row "NoParte" do |item|
               item.id
            end 
            row :pfecha
            row :serie
            row "Numero" do |item|
              item.nfactu
             end
            row "Documento" do |item|
              if Formula.where(product_id:16,orden:item.sele1).count>0 then
              Formula.where(product_id:16,orden:item.sele1).
                   select('descripcion as dd').first.dd
              end
             end
            row :Centro do |item|
              item.client.razon.capitalize if item.client
            end
            row :subtotal do |item|
                if  Detail.where(item_id:item.id).count>0 then
                  Detail.where(item_id:item.id).where('monto>0 and cantidad>0').each do |detal|
                    Detail.where(id:detal.id).update(precio:detal.monto/(detal.cantidad*1.18))
                  end  
                end  

               if Detail.where(item_id:item.id).sum(:monto)>0 then
                  item.update(subtotal:Detail.where(item_id:item.id).sum(:monto))
                  item.subtotal
              end
            end
           
            row :moneda do |item|
              Formula.where(product_id:8,orden:item.moneda).
                   select('descripcion as dd').first.dd
             end
            row :tc


          end
          panel "Tabla de Detalles" do
            table_for item.details do
 
              column :descripcion
              column :cantidad
              column :precio
              column :monto

            end
          end
          
 




      end


      sidebar "Datos Registro" do
        case Parameter.find_by_id(1).origen
        when 1
          li strong { "Registro de Compras : "+
           Formula.where(product_id:10).where(orden:Parameter.find_by_id(1).empresa).
                       select('descripcion as dd').first.dd.capitalize}
                      
          
        when 2
          li strong { "Registro de Ventas : "+
           Formula.where(product_id:10).where(orden:Parameter.find_by_id(1).empresa).
                         select('descripcion as dd').first.dd.capitalize}
         
         end
        li  strong { "Periodo :"+Parameter.find_by_id(1).mes.strftime("%b/%Y")}
        suss=Item.where(origen:Parameter.find_by_id(1).origen,
              mmes:Parameter.find_by_id(1).mes,
              empresa:Parameter.find_by_id(1).empresa).sum(:subtotal)
              
        li  strong { "IGV :"+ '%.2f' %(suss)} 
        li  strong { "IGV :"+ '%.2f' %(suss*0.18)} 
        li  strong { "TOTAL :"+ '%.2f' %(suss*1.18)} 

        link_to "Registros Excel",reports_vhoja1_path(format:  "xlsx", :param1=> 1)
        
       end# de sider
       
       sidebar "Datos de Parte" , only: :show do
        sub=0
 
        Item.where(id:params[:id]).each do |item|
          
          sub=sub+item.subtotal

        end #each
            ul do

              li   strong {'Subtotal='+'%.2f' %(sub).to_s}
              li   strong {'IGV='+'%.2f' %(sub*0.18).to_s}
              li  strong {'TOTAL='+'%.2f' %(sub*1.18).to_s}


            end

         
              # de sider     ,param1=> vpara,:param2=> 1) 
       end# de sider















end
