class Comment < ApplicationRecord
	belongs_to :user
	belongs_to :joboffer
	has_many :agreements
end
