class Venue < ApplicationRecord
  # Direct associations

  belongs_to :cuisines,
             :class_name => "Cuisine"

  has_many   :menu_items,
             :foreign_key => "venues_id",
             :dependent => :destroy

  # Indirect associations

  # Validations

end
