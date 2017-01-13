class Item < ApplicationRecord
  belongs_to :client
  belongs_to :user


  def set_serie
    if $vorigen.to_f==2
       if $vempresa.to_f==1
          self.serie=Item.where(origen:$vorigen,empresa:$vempresa).last.serie.to_f.round
       end
       if $vempresa.to_f==2
          self.serie=Item.where(origen:$vorigen,empresa:$vempresa).last.serie.to_f.round
       end
    end
  end

  def set_nfactu
    if $vorigen.to_f==2
       if $vempresa.to_f==1
         self.nfactu=Item.where(origen:$vorigen,empresa:$vempresa).last.nfactu.to_f.round+1
       end
       if $vempresa.to_f==2
         self.nfactu=Item.where(origen:$vorigen,empresa:$vempresa).last.nfactu.to_f.round+1
         end
     end
    end



end
