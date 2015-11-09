class User < ActiveRecord::Base

	validates :first_name, :last_name, :email, presence: true
	validates :email, format: { with: /\A[^@]+@([^@\.]+\.)+[^@\.]+\z/ }

	has_one :trainer

end
