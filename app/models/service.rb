class Service < ActiveRecord::Base

  scope :sorted, lambda { order("services.position ASC") }

end
