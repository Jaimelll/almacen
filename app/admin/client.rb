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
      f.input :tipo, :label => 'Tipo', :as => :select, :collection =>
              Formula.where(product_id:13).map{|u| [u.descripcion, u.orden]}
      f.input :origen, :label => 'Origen', :as => :select, :collection =>
              Formula.where(product_id:12).map{|u| [u.descripcion, u.orden]}
      f.input :user_id, :input_html => { :value => current_user.id }, :as => :hidden

    end
    f.actions
  end





end
