class Organization < ActiveRecord::Base
  
  attr_accessible :name
  
  has_many :projects
  has_many :organization_users
  has_many :users, :through => :organization_users
  
  validates_presence_of :name
  
  
  
end
