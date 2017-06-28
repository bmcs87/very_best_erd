class CreateDishes < ActiveRecord::Migration
  def change
    create_table :dishes do |t|
      t.string :name_of_dishes
      t.integer :cuisine_id
      t.integer :favorites_id

      t.timestamps

    end
  end
end
