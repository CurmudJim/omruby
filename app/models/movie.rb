class Movie < ApplicationRecord
  has_many :nominatings
  has_many :nominations, through: :nominatings

  def nomination_list
    self.nominations.collect do |nomination|
      nomination.name
    end.join(", ")
  end

  def nomination_list=(nominations_string)
    nomination_names = nominations_string.split(",").collect{ |s| s.strip}.uniq
    new_or_found_nominations = nomination_names.collect { |name| Nomination.find_or_create_by(name: name) }
    self.nominations = new_or_found_nominations
  end

  acts_as_votable
  acts_as_commentable
end
