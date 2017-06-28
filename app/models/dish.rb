class Dish < ApplicationRecord
  # Direct associations

  belongs_to :favorites,
             :class_name => "Favorite"

  belongs_to :cuisine

  has_many   :menu_items,
             :foreign_key => "dishes_id",
             :dependent => :destroy

  # Indirect associations

  # Validations

end
