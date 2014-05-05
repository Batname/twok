class Service < ActiveRecord::Base

  translates :name, :content, :title

  has_many :projects, dependent: :destroy

  scope :sorted, lambda { order("services.position ASC") }

end
