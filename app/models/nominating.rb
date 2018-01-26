class Nominating < ApplicationRecord
  belongs_to :nomination
  belongs_to :movie
end
