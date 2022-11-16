class AddProductIdToDetails < ActiveRecord::Migration[5.0]
  def change
    add_reference :details, :product, foreign_key: true
  end
end
