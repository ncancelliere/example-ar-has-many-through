class Cast < ActiveRecord::Base
  attr_accessible :actor, :character, :movie

  validates :character, :presence => true

  belongs_to :movie
  belongs_to :actor

end
