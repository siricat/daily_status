class Project < ActiveRecord::Base
  
  attr_accessible :name
  
  belongs_to :organization
  
  has_many  :posts
  has_many  :project_users
  has_many  :users, :through => :project_users
  
  validates_presence_of :name
   
end
