class UserMeta < ActiveRecord::Base
  attr_accessible :user_id, :meta_id, :meta_type

  belongs_to :user
  belongs_to :meta, polymorphic: true
end
