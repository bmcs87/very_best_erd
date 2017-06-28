class Dish < ApplicationRecord
  # Direct associations

  has_many   :menu_items,
             :foreign_key => "dishes_id",
             :dependent => :destroy

  # Indirect associations

  # Validations

end
