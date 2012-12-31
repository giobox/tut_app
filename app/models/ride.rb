# == Schema Information
#
# Table name: rides
#
#  id         :integer          not null, primary key
#  title      :string(255)
#  user_id    :integer
#  distance   :float
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Ride < ActiveRecord::Base
  attr_accessible :distance, :title
  belongs_to :user
  
  validates :user_id, presence:true
  validates :distance, presence:true
  validates :title, presence:true
  
  #ensures that most recent stories appear first
  default_scope order: 'rides.created_at DESC'
end
