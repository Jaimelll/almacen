class Detail < ApplicationRecord
  belongs_to :item
  belongs_to :user



  after_create:crear_monto

  after_create:edit_subtotal
  after_destroy:edit_subtotal



  def edit_monto
     self.update(monto: self.cantidad*self.precio)
  end






  private
  def crear_monto
     self.update(monto: self.cantidad*self.precio)
  end

  def edit_subtotal
    var=Detail.where(item_id:self.item_id).sum(:monto)
    Item.find(self.item_id).update(subtotal:var)
  end
end
