class CreateMenuItems < ActiveRecord::Migration
  def change
    create_table :menu_items do |t|
      t.integer :dishes_id
      t.integer :venues_id
      t.integer :favorites_id
      t.string :name
      t.string :calories

      t.timestamps

    end
  end
end
