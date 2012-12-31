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

require 'spec_helper'

describe Ride do
  pending "add some examples to (or delete) #{__FILE__}"
end
