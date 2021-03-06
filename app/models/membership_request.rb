# == Schema Information
#
# Table name: membership_requests
#
#  id         :integer          not null, primary key
#  user_id    :integer          not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class MembershipRequest < ActiveRecord::Base

	validates :user_id, presence: true

	belongs_to :user

	has_many :membership_request_responses
	
end
