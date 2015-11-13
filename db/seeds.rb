# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


genres = Genre.create([{ name: 'Metal' },
                       { name: 'Rock' },
                       { name: 'Folk' },
                       { name: 'Country' },
                       { name: 'Pop' },
                       { name: 'Electronic'}])

bands = Genre.find(1).bands.create([{ title: "Iron Maiden", content: "Iron Maiden is a heavy metal band from east London, England, formed in 1975 by bassist Steve Harris, formerly a member of Gypsy's Kiss and Smiler. They are one of the most successful and influential bands in the heavy metal genre, having sold more than 100 million albums world-wide.
Iron Maiden's work has inspired other sub-genres of heavy metal music, including power metal and speed metal. They are cited as major influences by (amongst others) the thrash metal band Slayer, pop-punk band Sum 41 and jam band Umphrey's McGee.
The band's mascot, Eddie, is a perennial fixture in the horror-influenced album cover art, as well as in live shows. Eddie also featured in a first-person shooter video game, Ed Hunter.
Iron Maiden have so far released 13 studio albums, 2 'best of' compilations and 5 live albums. With a string of festival appearances arranged for 2005, they show no sign of stopping yet."}])
