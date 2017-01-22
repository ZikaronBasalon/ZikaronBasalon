class User < ActiveRecord::Base
  default_scope order('id ASC')

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # belongs_to :meta, polymorphic: true
  has_many :user_metas
  has_many :hosts, through: :user_metas, source: :meta, source_type: 'Host'
  has_many :guests, through: :user_metas, source: :meta, source_type: 'Guest'
  has_many :managers, through: :user_metas, source: :meta, source_type: 'Manager'

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
    self.managers.any?
  end

  def host?
    self.hosts.any? {|host| host.year == ENV['CURRENT_YEAR']}
  end

  def guest?
    self.guests.any? {|guest| guest.year == ENV['CURRENT_YEAR']}
  end

  def any_admin?
    self.admin || self.sub_admin
  end

  def was_host?
    self.hosts.any?
  end

  def was_guest?
    self.guests.any?
  end

  def active_meta
    return self.managers.last if self.manager?
    return self.hosts.last if self.host?
    return self.guests.last if self.guest?
    nil
  end
  alias_method :meta, :active_meta

  def has_active_meta
    active_meta.present?
  end

  def save_as_deleted_user
    DeletedUser.create(name: full_name, email: email, type: meta_type)
  end
end
