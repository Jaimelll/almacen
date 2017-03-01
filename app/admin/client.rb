ActiveAdmin.register Client do

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
permit_params :ruc, :razon, :direccion,
              :obs, :tipo, :origen, :created_at,
              :updated_at,  :user_id

  filter :ruc
  filter :razon
  filter :direccion

  scope :all, :default => true
  scope :proveedores do |clients|
    clients.where("tipo = 2")
  end
  scope :clientes do |clients|
    clients.where("tipo = 1")
  end
  scope :Mercaderia do |clients|
    clients.where("origen = 1")
  end
  scope :Activos do |clients|
    clients.where("origen = 2")
  end

  index do
    column("ruc")
    column("razon")
    column("direccion")
    column("tipo")
    column("origen")
      actions
  end
  form do |f|
    f.inputs "Centros" do
      f.input :ruc, :input_html => { :style =>  'width:30%'}
      f.input :razon, :input_html => {:rows => 2, :style =>  'width:30%'}
      f.input :direccion, :input_html => {:rows => 2, :style =>  'width:30%'}
      f.input :tipo, :input_html => { :style =>  'width:30%'}, as: :select, collection: ([['cliente',1],['proveedor',2]] )
      f.input :origen, :input_html => { :style =>  'width:30%'}, as: :select, collection: ([['Mercaderia',1],['Activo fijo',2],['Otros activos',3],['Gastos',4],['Otros gastos',5]]  )
      f.input :user_id, :input_html => { :value => current_user.id }, :as => :hidden

    end
    f.actions
  end





end
