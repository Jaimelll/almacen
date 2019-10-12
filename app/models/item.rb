class Item < ApplicationRecord
  belongs_to :client
  belongs_to :user
  has_many :details, :dependent => :destroy

  accepts_nested_attributes_for :details, allow_destroy: true
 validates_uniqueness_of :nfactu, :scope => [:serie, :client_id]


def self.to_csv(options={})
  CSV.generate(options) do |csv|
  csv <<  column_names
    all.each do |item|
       csv << item.attributes.values_at(*column_names)
    end
  end
end


  def set_serie
    if Parameter.find_by_id(1).origen==2

          self.serie=Item.where(origen:Parameter.find_by_id(1).origen,empresa:Parameter.find_by_id(1).empresa).last.serie.to_f.round

    end
  end

  def set_nfactu
    if Parameter.find_by_id(1).origen==2

         self.nfactu=Item.where(origen:Parameter.find_by_id(1).origen,empresa:Parameter.find_by_id(1).empresa).last.nfactu.to_f.round+1
     end
    end

    def update_subtotal
      self.update(subtotal:Detail.where(item_id:self.id).sum(:monto))
    end


end
