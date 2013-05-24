class Cast < ActiveRecord::Base
  attr_accessible :actor, :character, :movie

  validates :character, :presence => true
  validates :actor_id, :uniqueness => { :scope => :movie_id, :message => 'already stars in this movie' }

  belongs_to :movie
  belongs_to :actor

end
