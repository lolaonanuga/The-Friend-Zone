# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Category.delete_all
Interest.delete_all

entertainment = Category.create(name: "Entertainment")
sport = Category.create(name: "Sport & Wellness")
lifestyle = Category.create(name: "Lifestyle")


climbing = Interest.create(name:"Climbing", category_id: sport.id)
skiing = Interest.create(name:"Skiing", category_id: sport.id)
gym = Interest.create(name:"Gym", category_id: sport.id)
yoga = Interest.create(name:"Yoga", category_id: sport.id)
football = Interest.create(name:"Football", category_id: sport.id)
hiking = Interest.create(name:"Hiking", category_id: sport.id)
swimming = Interest.create(name:"Swimming", category_id: sport.id)


festivals = Interest.create(name:"Festivals", category_id: entertainment.id)
gigs = Interest.create(name:"Concerts & gigs", category_id: entertainment.id)
theatre = Interest.create(name:"Theatre", category_id: entertainment.id)
cinema = Interest.create(name:"Cinema", category_id: entertainment.id)
gallery = Interest.create(name:"Art galleries", category_id: entertainment.id)
museum = Interest.create(name:"Museums", category_id: entertainment.id)
gaming = Interest.create(name:"Gaming", category_id: entertainment.id)
clubbing = Interest.create(name:"Clubbing", category_id: entertainment.id)


fashion = Interest.create(name:"Fashion", category_id: lifestyle.id)
cooking = Interest.create(name:"Cooking",category_id: lifestyle.id)
travel = Interest.create(name:"Travel", category_id: lifestyle.id)
camping = Interest.create(name:"Camping", category_id: lifestyle.id)

