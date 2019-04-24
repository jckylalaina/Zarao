class Space < ApplicationRecord
	validates :title,presence:true
	has_many :users
	has_many :pools
end
