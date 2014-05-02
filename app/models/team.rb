class Team < ActiveRecord::Base


  validates :position, uniqueness: true
  scope :sorted, lambda { order("teams.position ASC") }

end
