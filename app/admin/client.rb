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
  end

end
