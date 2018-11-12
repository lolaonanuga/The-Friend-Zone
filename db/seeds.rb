# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


entertainment = Category.create(name: "Entertainment")
sport = Category.create(name: "Sport & Wellness")
lifestyle = Category.create(name: "Lifestyle")


climbing = Interest.createw("Climbing", 1)
skiing = Interest.create("Skiing", 1)
gym = Interest.create("Gym", 1)
yoga = Interest.create("Yoga", 1)
football = Interest.create("Football", 1)


festivals = Interest.create("Festivals", 2)
gigs = Interest.create("Concerts & gigs", 2)
theatre = Interest.create("Theatre", 2)
cinema = Interest.create("Cinema", 2)
gallery = Interest.create("Art galleries", 2)
museum = Interest.create("Museums", 2)
gaming = Interest.create("Gaming", 2)
clubbing = Interest.create("Clubbing", 2)


fashion = Interest.create("Fashion", 3)
cooking = Interest.create("Cooking", 3)
travel = Interest.create("Travel", 3)

