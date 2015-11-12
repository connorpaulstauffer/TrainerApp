# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  first_name      :string           not null
#  last_name       :string           not null
#  email           :string           not null
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  password_digest :string           not null
#

class User < ActiveRecord::Base

	validates :first_name, :last_name, :email, presence: true
	validates :email, format: { with: /\A[^@]+@([^@\.]+\.)+[^@\.]+\z/ }

	has_one :trainer

end
