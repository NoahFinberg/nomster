class Place < ActiveRecord::Base
	self.per_page = 3

	belongs_to :user
end
