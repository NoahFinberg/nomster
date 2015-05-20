class Place < ActiveRecord::Base
	self.per_page = 3

	validates :name, :presence => true

	belongs_to :user
end
