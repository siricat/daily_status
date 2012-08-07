class Post < ActiveRecord::Base
  
  attr_accessible :status, 
    :status_detail
  
  has_many    :comments
  belongs_to  :user
  belongs_to  :project
  
  STATUS = [
    "In Progress", 
    "Complete", 
    "Blocked",
    "Waiting",
    "Out of the Office",
    "Michael Moen Special"
  ]

  
end
