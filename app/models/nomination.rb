class Nomination < ApplicationRecord
  has_many :nominatings
  has_many :movies, through: :nominatings

end
