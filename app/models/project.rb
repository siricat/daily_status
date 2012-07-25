class Project < ActiveRecord::Base
  attr_accessible :name
  
  has_many :project_users
  has_many :users, :through => :project_users
  
  validates_presence_of :name
   
end
