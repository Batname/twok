class Project < ActiveRecord::Base

  belongs_to :service
  scope :sorted, lambda { order("projects.position ASC") }
end
