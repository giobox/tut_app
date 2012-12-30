class Newsitem < ActiveRecord::Base
  attr_accessible :story_body, :title
  belongs_to :user
  
  validates :user_id, presence:true
  validates :story_body, presence:true
  validates :title, presence:true
  
  #ensures that most recent stories appear first
  default_scope order: 'newsitems.created_at DESC'
end
