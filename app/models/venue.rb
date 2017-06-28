class Venue < ApplicationRecord
  # Direct associations

  has_many   :menu_items,
             :foreign_key => "venues_id",
             :dependent => :destroy

  # Indirect associations

  # Validations

end
