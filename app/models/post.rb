class Post < ActiveRecord::Base
  attr_accessible :status, :status_detail
  
  belongs_to :user
  belongs_to :project
  has_many :comments
  
  STATUS = [
    "In Progress", 
    "Complete", 
    "Blocked",
    "Waiting",
    "Out of the Office",
    "Michael Moen Special"
  ]

  
end
