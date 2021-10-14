class AddColumnFromToUser < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :from, :string
  end
end
