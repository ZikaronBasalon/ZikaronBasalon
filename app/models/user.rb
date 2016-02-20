class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  after_create :create_meta

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable

  belongs_to :meta, polymorphic: true

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :full_name, :type
  attr_accessor :type
  # attr_accessible :title, :body

  def create_meta
    manager = Manager.find_by_temp_email(self.email)
    if manager
      manager.user = self
      manager.save
      return
    end
  	if self.type == 'host'
      host = Host.new
      host.user = self
      host.save
    end
  end
end
