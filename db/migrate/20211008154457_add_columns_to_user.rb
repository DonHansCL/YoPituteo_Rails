class AddColumnsToUser < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :nombre, :string
    add_column :users, :edad, :string
    add_column :users, :profesion, :string
    add_column :users, :telefono, :string
    add_column :users, :genero, :string
    add_column :users, :descripcion, :text
    add_column :users, :id_ciudad, :integer
    add_column :users, :id_estado, :boolean, default: false
  end
end
