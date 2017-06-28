class MenuItem < ApplicationRecord
  # Direct associations

  belongs_to :dishes,
             :class_name => "Dish"

  belongs_to :venues,
             :class_name => "Venue"

  # Indirect associations

  # Validations

end
