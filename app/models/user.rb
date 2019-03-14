# == Schema Information
#
# Table name: users
#
#  id                      :integer          not null, primary key
#  email                   :string(255)      default(""), not null
#  encrypted_password      :string(255)      default(""), not null
#  reset_password_token    :string(255)
#  reset_password_sent_at  :datetime
#  remember_created_at     :datetime
#  sign_in_count           :integer          default(0), not null
#  current_sign_in_at      :datetime
#  last_sign_in_at         :datetime
#  current_sign_in_ip      :string(255)
#  last_sign_in_ip         :string(255)
#  created_at              :datetime         not null
#  updated_at              :datetime         not null
#  full_name               :string(255)
#  phone                   :string(255)
#  admin                   :boolean          default(FALSE)
#  meta_id                 :integer
#  meta_type               :string(255)
#  sub_admin               :boolean          default(FALSE)
#  previous_meta_id        :integer
#  previous_meta_type      :string(255)
#  active_this_year        :boolean          default(TRUE)
#  current_year_admin      :boolean          default(FALSE)
#  locale                  :string(255)
#  agreed_to_terms_at      :datetime
#  subscribed_to_marketing :boolean
#

class User < ActiveRecord::Base
  has_paper_trail
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  belongs_to :meta, polymorphic: true

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me,
                  :full_name, :type, :phone, :agreed_to_terms_at, :subscribed_to_marketing, :active_this_year
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

  def simple_admin?
    self.meta_type == 'Manager' && !self.sub_admin && !self.admin
  end

  def any_admin?
    self.admin || self.sub_admin || (self.meta_type == 'Manager' && !self.sub_admin && !self.admin)
  end

  def the_admin?
    self.admin
  end

  def save_as_deleted_user
    DeletedUser.create(name: full_name, email: email, type: meta_type)
  end
end
