class Movie < ActiveRecord::Base
  attr_accessible :rated, :runtime, :summary, :title, :release_date

  validates :title, :presence => true

  has_many :casts
  has_many :actors, :through => :casts
end
