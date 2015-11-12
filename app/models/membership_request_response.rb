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
	# this is created regardless of whether a trainer has responded
	# it represents the state of a user's membership request

	validates :membership_request_id, presence: true

	belongs_to :membership_request
	belongs_to :user
	belongs_to :trainer

end
