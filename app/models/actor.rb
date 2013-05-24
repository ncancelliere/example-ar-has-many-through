class Actor < ActiveRecord::Base
  attr_accessible :date_of_birth, :date_of_death, :gender, :name
end
