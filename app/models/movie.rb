class Movie < ActiveRecord::Base
  attr_accessible :rated, :runtime, :summary, :title, :release_date

  validates :title, :presence => true

  has_many :cast, :class_name => 'Cast'
  has_many :actors, :through => :cast
end
