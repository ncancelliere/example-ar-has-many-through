class Movie < ActiveRecord::Base
  attr_accessible :rated, :runtime, :summary, :title, :release_date
end
