class AddUserIdToClient < ActiveRecord::Migration[5.0]
  def change
    add_column :clients, :clients, :string
    add_reference :clients, :user, foreign_key: true
  end
end
