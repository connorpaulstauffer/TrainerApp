# == Schema Information
#
# Table name: membership_request_responses
#
#  id                    :integer          not null, primary key
#  membership_request_id :integer          not null
#  user_id               :integer
#  trainer_id            :integer
#  created_at            :datetime         not null
#  updated_at            :datetime         not null
#

class MembershipRequestResponse < ActiveRecord::Base
end
