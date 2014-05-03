class Service < ActiveRecord::Base

  has_many :projects, dependent: :destroy

  scope :sorted, lambda { order("services.position ASC") }

end
