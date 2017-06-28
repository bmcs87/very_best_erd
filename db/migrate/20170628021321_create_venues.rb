class CreateVenues < ActiveRecord::Migration
  def change
    create_table :venues do |t|
      t.string :name
      t.integer :neighborhoods_id
      t.string :address
      t.integer :cuisines_id

      t.timestamps

    end
  end
end
