# == Schema Information
#
# Table name: membership_requests
#
#  id         :integer          not null, primary key
#  user_id    :integer          not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class MembershipRequestTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
