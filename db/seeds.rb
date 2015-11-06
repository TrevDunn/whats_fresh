# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Market.destroy_all
Farmer.destroy_all

a = Tweed.create(content: 'This is definitely not confusing.')
a.comments << Comment.create(content: 'Agreed.')

a = Market.create(name: 'Union Square GreenMarket', location: 'New York, NY', website: 'http://www.grownyc.org/greenmarket/manhattan-union-square-m', )















#
