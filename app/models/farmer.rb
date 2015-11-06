class Farmer <ActiveRecord::Base
	belongs_to :market

	has_many :favorites, as: :favorable
	# Unsure of how 'fans' will manifest itself in the
		# database; useful for seeing all users that
		# favorited cetain items or farmers?
	has_many :fans, through: :favorites, source: :user

	# has_many :items
	# has_many :users, through: :favorites
end
