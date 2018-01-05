class Beer < ApplicationRecord

  validates :name, :abv, :style, presence: true

  acts_as_votable
end
