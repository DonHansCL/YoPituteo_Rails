class CreateRegions < ActiveRecord::Migration[6.1]
  def change
    create_table :regions do |t|
      t.string :region_nombre
      t.string :region_ordinal

      t.timestamps
    end
  end
end
