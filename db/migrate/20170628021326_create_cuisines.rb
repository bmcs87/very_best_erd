class CreateCuisines < ActiveRecord::Migration
  def change
    create_table :cuisines do |t|
      t.string :type_of_cuisine

      t.timestamps

    end
  end
end
