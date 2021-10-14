class AddColumnsLanguageAboutToUser < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :about, :string
    add_column :users, :language, :string
  end
end
