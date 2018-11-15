Category.destroy_all
Interest.destroy_all
User.destroy_all
UserInterest.destroy_all

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

dario=User.create(username: "john", first_name:"John", last_name:"Doe", age:23, password:"hello", password_confirmation: "hello", bio:"Hello Eveybody, I am very excited about finding friends! Look forward to hearing from you")
lola=User.create(username: "mary", first_name:"Mary", last_name:"Silverstein", age:24, password:"hello", password_confirmation: "hello", bio:"I am awesome")
joe=User.create(username: "kelly", first_name:"Kelly", last_name:"Sanders", age:25, password:"hello", password_confirmation: "hello", bio:"Hellllooooooo")
ricky=User.create(username: "mike", first_name:"Mike", last_name:"Donovan", age:26, password:"hello", password_confirmation: "hello", bio:":))))))))))")
rob=User.create(username: "anders", first_name:"Anders", last_name:"anders", age:30, password:"hello", password_confirmation: "hello", bio:"Write me !! ")
natasha=User.create(username: "patrick", first_name:"Patrick", last_name:"McDonald", age:18, password:"hello", password_confirmation: "hello", bio:" Hey let's hangout!")
mikko=User.create(username: "karen", first_name:"Karen", last_name:"Jefferson", age:33, password:"hello", password_confirmation: "hello", bio:" friendfriendfriendfriend")
chris=User.create(username: "chris", first_name:"Chris", last_name:"Christiansen", age:21, password:"hello", password_confirmation: "hello", bio:"Heyyyyyyy")

u1=UserInterest.create(user_id: dario.id, interest_id: climbing.id)
u2=UserInterest.create(user_id: dario.id, interest_id: gigs.id)
u3=UserInterest.create(user_id: dario.id, interest_id: museum.id)
u4=UserInterest.create(user_id: dario.id, interest_id: gaming.id)
u5=UserInterest.create(user_id: lola.id, interest_id: gigs.id)
u6=UserInterest.create(user_id: lola.id, interest_id: museum.id)
u7=UserInterest.create(user_id: lola.id, interest_id: gaming.id)
u8=UserInterest.create(user_id: lola.id, interest_id: theatre.id)
u5=UserInterest.create(user_id: joe.id, interest_id: gigs.id)
u6=UserInterest.create(user_id: joe.id, interest_id: museum.id)
u7=UserInterest.create(user_id: joe.id, interest_id: cooking.id)
u8=UserInterest.create(user_id: ricky.id, interest_id: gigs.id)
u9=UserInterest.create(user_id: ricky.id, interest_id: museum.id)
u10=UserInterest.create(user_id: ricky.id, interest_id: climbing.id)
u11=UserInterest.create(user_id: mikko.id, interest_id: fashion.id)
u12=UserInterest.create(user_id: mikko.id, interest_id: travel.id)
u13=UserInterest.create(user_id: natasha.id, interest_id: fashion.id)
u14=UserInterest.create(user_id: natasha.id, interest_id: gaming.id)
u15=UserInterest.create(user_id: chris.id, interest_id: fashion.id)
u16=UserInterest.create(user_id: chris.id, interest_id: travel.id)
