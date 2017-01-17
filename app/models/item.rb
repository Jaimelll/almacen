class Item < ApplicationRecord
  belongs_to :client
  belongs_to :user
   has_many :details

  def set_serie
    if $vorigen.to_f==2

          self.serie=Item.where(origen:$vorigen,empresa:$vempresa).last.serie.to_f.round

    end
  end

  def set_nfactu
    if $vorigen.to_f==2

         self.nfactu=Item.where(origen:$vorigen,empresa:$vempresa).last.nfactu.to_f.round+1
     end
    end

    def update_subtotal
      self.update(subtotal:Detail.where(item_id:self.id).sum(:monto))
    end


end
