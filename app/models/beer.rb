class Beer < ApplicationRecord

  validates :name, :abv, :style, :price, presence: true
end
