class Venue < ApplicationRecord
  # Direct associations

  belongs_to :neighborhoods,
             :class_name => "Neighborhood"

  belongs_to :cuisines,
             :class_name => "Cuisine"

  has_many   :menu_items,
             :foreign_key => "venues_id",
             :dependent => :destroy

  # Indirect associations

  has_many   :dishes,
             :through => :menu_items,
             :source => :dishes

  # Validations

end
