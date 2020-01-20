class ItemsController < ApplicationController

    def centr_nomb(idclient)
        vrazon='sin razon '
        vruc='sin ruc '
      if Client.where(id:idclient).count>0 then
      vrazon= Client.find_by_id(idclient).razon
      vruc=   Client.find_by_id(idclient).ruc
      end 
       return vrazon,vruc
     end
    
  
end
