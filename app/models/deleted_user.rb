class DeletedUser < ActiveRecord::Base
  attr_accessible :email, :name, :type
end
