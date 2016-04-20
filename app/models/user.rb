class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  belongs_to :meta, polymorphic: true

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me,
                  :full_name, :type, :phone
  attr_accessor :type

  before_destroy :save_as_deleted_user
  
  def first_name
    if full_name
      return full_name.split(' ')[0]
    end
  end

  def last_name
    if full_name
      return full_name.split(' ')[1]
    end
  end

  def manager?
    self.meta && self.meta.is_a?(Manager)
  end

  def host?
    self.meta && self.meta.is_a?(Host)
  end

  def guest?
    self.meta && self.meta.is_a?(Guest)
  end

  def any_admin?
    self.admin || self.sub_admin
  end

  def save_as_deleted_user
    DeletedUser.create(name: full_name, email: email, type: meta_type)
  end
end
