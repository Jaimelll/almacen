class VariablesController < ApplicationController
  def form
  case Parameter.find_by_id(1).origen
    when 1


       case Parameter.find_by_id(1).empresa
          when 1
           nombre="LE10257000767"+ Parameter.find_by_id(1).mes.strftime("%Y") + Parameter.find_by_id(1).mes.strftime("%m")+"00080100001111"
          when 2
           nombre="LE10402501486"+ Parameter.find_by_id(1).mes.strftime("%Y") + Parameter.find_by_id(1).mes.strftime("%m")+"00080100001111"
       end
    when 2
      case Parameter.find_by_id(1).empresa
         when 1
          nombre="LE10257000767"+ Parameter.find_by_id(1).mes.strftime("%Y") + Parameter.find_by_id(1).mes.strftime("%m")+"00140100001111"
         when 2
          nombre="LE10402501486"+ Parameter.find_by_id(1).mes.strftime("%Y") + Parameter.find_by_id(1).mes.strftime("%m")+"00140100001111"
      end

  end
   @items = Item.where(origen:Parameter.find_by_id(1).origen,mmes:Parameter.find_by_id(1).mes,empresa:Parameter.find_by_id(1).empresa).order('pfecha ASC','serie','nfactu')
   @regis = Item.where(origen:Parameter.find_by_id(1).origen,mmes:Parameter.find_by_id(1).mes,empresa:Parameter.find_by_id(1).empresa).count('Id')
   @acum = Item.where(origen:Parameter.find_by_id(1).origen,mmes:Parameter.find_by_id(1).mes,empresa:Parameter.find_by_id(1).empresa).sum('subtotal')

   respond_to do |format|
       format.html
       format.json
       format.pdf{render template: 'variables/reporte.pdf.erb', pdf:"#{nombre}"}


     end
  end


  def comment

   @items = Item.where(origen:Parameter.find_by_id(1).origen,mmes:Parameter.find_by_id(1).mes,empresa:Parameter.find_by_id(1).empresa).order('pfecha ASC','serie','nfactu')
   @regis = Item.where(origen:Parameter.find_by_id(1).origen,mmes:Parameter.find_by_id(1).mes,empresa:Parameter.find_by_id(1).empresa).count('Id')
   @acum = Item.where(origen:Parameter.find_by_id(1).origen,mmes:Parameter.find_by_id(1).mes,empresa:Parameter.find_by_id(1).empresa).sum('subtotal')
   respond_to do |format|
       format.html
       format.json
       format.pdf{render template: 'variables/reporte2.pdf.erb', pdf:'Factura2'}
     end
  end

end
