class Favorite < ApplicationRecord
  # Direct associations

  has_many   :dishes,
             :foreign_key => "favorites_id",
             :dependent => :destroy

  # Indirect associations

  # Validations

end
