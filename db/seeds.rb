# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Market.destroy_all
# Farmer.destroy_all
# Item.destroy_all


a = Market.create(name: 'Union Square GreenMarket', location: 'New York, NY', website: 'http://www.grownyc.org/greenmarket/manhattan-union-square-m', hours: '6:00AM to Sundown', description: 'With many booths of wonderful foods and sundries, this NYC GreenMarket location is among the largerst in Manhattan. Fresh goods abound; come down and join us!')

b = Market.create(name: 'Matthews Community Farmers\' Market', location: 'Charlotte, NC', website: 'http://www.matthewsfarmersmarket.com/', hours: '8:00AM to Noon', description: 'There\'s Lots of Great Eating Ahead As Farmers Harvest Cool Weather Crops.
Keep Us In Your Saturday Routine!')

c = Market.create(name: 'Friends of Elon Community Church Farmers Market', location: 'Elon, NC', website: 'https://www.facebook.com/Friends-of-Elon-Community-Church-Farmers-Market-146462892085433/', hours: '3:00PM to Sundown', description: 'Come to the market today, taste some of the delicious Jillie\'s Jams, say hi to the farmers at T5-Farms, visit The Grain Factory, sample some cheese, support your local farmers and makers! Today from 3:00 pm til dark, maybe 5ish?')


#
# d = Farmer.create(name:'Bakers Bounty',email:'bakersbounty@aol.com',website:'http://www.bakersbounty.net/',description:'Baker\'s Bounty is a family run, farm-to-market bakery located in Linden, NJ. Jim LaPrete began the bakery in 1978 because it made sense to him that he should combine his baking talents with the farming talents of his friends. Buying ingredients from farmers and selling what breads and pastries he made from them at farmers\' markets meant that Jim LaPrete had a unique product which he sold personally and alongside his family.')
#
# e = Farmer.create(name:'Cato Corner Farm',email:'catocornerfarm@aol.com',website:'http://www.catocornerfarm.com/',description:'At Cato Corner Farm we make raw farmstead cheese by hand from the delicious milk of our 45 Jersey cows.  The cows are humanely raised on a pasture-based diet without growth hormones or subtherapeutic antibiotics.  We feed a small amount of grain to complement the nutrition in the grass and hay.  Our cheeses are our own unique recipes, based on traditional cheese making styles and highlighting the flavor and terroir of our pastures and our farm. Cato Corner Farm is owned and managed by the mother-son team of Elizabeth MacAlister and Mark Gillman.')
#
# f = Farmer.create(name:'Adventures In Herbs',email:'brendadills@yahoo.com',website:'http://www.adventuresinherbs.com/',description:'We look forward to doing business with you.')
#
# g = Farmer.create(name:'Bosky Acres Farm',email:'info@boskyacres.com',website:'http://www.boskyacres.com/',description:'At Bosky Acres our families\' passion is the centered around the incredible dairy goat, and the wonderful milk they provide.
#
# We are located a stones throw from Waxhaw, in the rolling landscape of southwest Union County, near Charlotte, North Carolina. It is on our farm we make fresh unripened goat cheese (Chevre) for local farmers markets, area restaurants, and regional whole foods groceries. We don\'t ship our cheese, because staying local guarantees a great product for our customers.')
#
# h = Farmer.create(name:'Jillie\'s Jams ',email:'jilliesjams@gmail.com',website:'http://jilliesjams.com/',description:'Only top quality fresh fruit, which is exclusively grown locally. We use no added preservatives and no artificial flavors or ingredients.')
#
# i = Farmer.create(name:'Redbud Farm, Certified Organic',email:'redbudfarm@aol.com',website:'https://www.facebook.com/Redbud-Farm-Certified-Organic-164705206918840/',description:'Beautiful fall day with Friends of Elon Community Church Farmers Market. Come on out for local food and warm breezes.')
#
#
#
# a.farmers << d
# a.farmers << e
# b.farmers << f
# b.farmers << g
# c.farmers << h
# c.farmers << i












#
