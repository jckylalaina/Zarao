class Pool < ApplicationRecord
	validates :title,presence:true,length: {minimum: 3}
	belongs_to :space
	belongs_to :user
	has_many :tasks
end
