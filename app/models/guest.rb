class Guest < ActiveRecord::Base
  attr_accessible :email, :phone,:name,:num_of_friends
end
