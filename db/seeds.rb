Category.delete_all
Interest.delete_all

entertainment = Category.create(name: "Entertainment")
sport = Category.create(name: "Sport & Wellness")
lifestyle = Category.create(name: "Lifestyle")


climbing = Interest.create(name:"Climbing", category_id: entertainment.id)
skiing = Interest.create(name:"Skiing", category_id: entertainment.id)
gym = Interest.create(name:"Gym", category_id: entertainment.id)
yoga = Interest.create(name:"Yoga", category_id: entertainment.id)
football = Interest.create(name:"Football", category_id: entertainment.id)
hiking = Interest.create(name:"Hiking", category_id: entertainment.id)
swimming = Interest.create(name:"Swimming", category_id: entertainment.id)


festivals = Interest.create(name:"Festivals", category_id: sport.id)
gigs = Interest.create(name:"Concerts & gigs", category_id: sport.id)
theatre = Interest.create(name:"Theatre", category_id: sport.id)
cinema = Interest.create(name:"Cinema", category_id: sport.id)
gallery = Interest.create(name:"Art galleries", category_id: sport.id)
museum = Interest.create(name:"Museums", category_id: sport.id)
gaming = Interest.create(name:"Gaming", category_id: sport.id)
clubbing = Interest.create(name:"Clubbing", category_id: sport.id)


fashion = Interest.create(name:"Fashion", category_id: lifestyle.id)
cooking = Interest.create(name:"Cooking",category_id: lifestyle.id)
travel = Interest.create(name:"Travel", category_id: lifestyle.id)
camping = Interest.create(name:"Camping", category_id: lifestyle.id)
