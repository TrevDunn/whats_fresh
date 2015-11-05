class User < ActiveRecord::Base
	# has_many :favorites
	has_secure_password
	validates :email, presence: true
	validates :password, length: { in: 6..20 }
	validates :paswwrod, presence: true
end
