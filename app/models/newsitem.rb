# == Schema Information
#
# Table name: newsitems
#
#  id         :integer          not null, primary key
#  title      :string(255)
#  story_body :string(255)
#  user_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Newsitem < ActiveRecord::Base
  attr_accessible :story_body, :title
  belongs_to :user
  
  validates :user_id, presence:true
  validates :story_body, presence:true
  validates :title, presence:true
  
  #ensures that most recent stories appear first
  default_scope order: 'newsitems.created_at DESC'
end
