class Star < ActiveRecord::Base
	validates :first_name, :last_name, presence: true
	validates :state, length: { is: 2 }
  attr_accessible :birthdate, :city, :first_name, :last_name, :state

  has_many :movies

  def full_name
    first_name + ' ' + last_name
  end
end
