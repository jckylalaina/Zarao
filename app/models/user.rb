class User < ApplicationRecord
	 before_validation :a
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  belongs_to :space 
  has_many :notes
  # has_many :doings
  # has_many :tasks, through: :doings
  # has_many :finishes 
  # has_many :tasks, through: :finishes
  def a
  	
  end	
  	
end
