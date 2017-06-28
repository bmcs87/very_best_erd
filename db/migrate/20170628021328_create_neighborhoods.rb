class CreateNeighborhoods < ActiveRecord::Migration
  def change
    create_table :neighborhoods do |t|
      t.string :name_of_neighborhood
      t.string :city

      t.timestamps

    end
  end
end
