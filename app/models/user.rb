class User < ActiveRecord::Base
	has_many :favorites
	# has_many :items, through: :favorites
	# has_many :farmers, through: :favorites

	has_many :favorite_items, through: :favorites, source: :favorable, :source_type => "Item"
	has_many :favorite_farmers, through: :favorites, source: :favorable, :source_type => "Farmer"


	has_secure_password
	validates :email, presence: true
	validates :password, length: { in: 6..20 }
	validates :password, presence: true
end
