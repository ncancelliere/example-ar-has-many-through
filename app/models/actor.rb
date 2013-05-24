class Actor < ActiveRecord::Base
  attr_accessible :date_of_birth, :date_of_death, :gender, :name

  validates :name, :presence => true

  has_many :movies, :through => :casts
  has_many :casts

end
