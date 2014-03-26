class City < ActiveRecord::Base
  attr_accessible :name, :region_id, :manager_email

  belongs_to :region
  has_many :hosts

  def get_hosts
  	hosts.where("strangers = ?",true)
  end
end
