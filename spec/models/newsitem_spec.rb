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

require 'spec_helper'

describe Newsitem do
  pending "add some examples to (or delete) #{__FILE__}"
end
