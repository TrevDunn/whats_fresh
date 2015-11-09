class Favorite < ActiveRecord::Base
	belongs_to :user
	# Allows favorite to link to and contain both items and
		# farmers
	belongs_to :favorable, polymorphic: true
	# Attr accessible used to allow reading/writing of
		# faroited items and farmers
		
	# attr_accessible :user, :favorable


	# belongs_to :item
	# belongs_to :farmer
end
