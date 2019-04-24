class Task < ApplicationRecord
validates :title, presence: true,length: {minimum: 5}
#validate :end_after_start, on: :create
#validates :start_date,presence: true
has_many :notes

belongs_to :user
belongs_to :pool

# private

# def end_after_start
#   return if end_date.blank? || start_date.blank? || limite_date.blank?
 
#   if end_date < start_date
#     errors.add(:end_date, "must be after the start date") 
# elsif limite_date < start_date
# 	errors.add(:limite_date,"must be after the start date")
#   end 
#  end
 end
