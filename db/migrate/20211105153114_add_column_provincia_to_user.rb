class AddColumnProvinciaToUser < ActiveRecord::Migration[6.1]
  def change
    add_reference :users, :provincia, null: true, foreign_key: true
  end
end
