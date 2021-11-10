class AddColumnRegionToGig < ActiveRecord::Migration[6.1]
  def change
    add_reference :gigs, :region, null: true, foreign_key: true
  end
end
