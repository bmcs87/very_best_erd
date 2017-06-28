class Cuisine < ApplicationRecord
  # Direct associations

  has_many   :venues,
             :foreign_key => "cuisines_id",
             :dependent => :destroy

  has_many   :dishes,
             :dependent => :destroy

  # Indirect associations

  # Validations

end
