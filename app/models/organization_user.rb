class OrganizationUser < ActiveRecord::Base
  # attr_accessible :title, :body
  
  belongs_to  :organization
  belongs_to  :user
  
  
end
