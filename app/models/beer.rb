class Beer < ApplicationRecord

  validates :name, :abv, :style, presence: true
end
