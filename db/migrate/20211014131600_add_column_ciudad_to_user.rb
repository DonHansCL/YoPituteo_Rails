class AddColumnCiudadToUser < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :ciudad, :string
  end
end
