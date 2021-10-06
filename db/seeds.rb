# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Profile.destroy_all
Category.destroy_all
Activity.destroy_all
Event.destroy_all

User.create!(firstname: 'Abby', lastname: 'Allus')
User.create!(firstname: 'Betty', lastname: 'Black')
User.create!(firstname: 'Common', lastname: 'Carson')
User.create!(firstname: 'Delta', lastname: 'Delphina')

Profile.create!(username: 'Abster33', email: 'Abster33@gmail.com')
Profile.create!(username: 'Bettyliscious', email: 'Blackbetty@123.com')
Profile.create!(username: 'Common', email: 'alltoocommon@hotmail.com')
Profile.create!(username: 'Delta', email: 'doubledee@aol.com')

Category.create!(category_name: 'Sports')
Category.create!(category_name: 'Arts & Crafts')
Category.create!(category_name: 'Concerts')
Category.create!(category_name: 'Education')

Activity.create!(activity_name: 'Basketball', category_id: 1)
Activity.create!(activity_name: 'Crochet Class', category_id: 2)
Activity.create!(activity_name: 'Foo Fighters', category_id: 3)
Activity.create!(activity_name: 'Learn to dance salsa', category_id: 4)

Event.create!(event_name: 'Orange Park Basketball', posting_date: 10-31-2021, desc: "Fun times")
Event.create!(event_name: 'Crochet Class at The Winehouse', posting_date: 10-31-2021, desc: "Come join us!")
Event.create!(event_name: 'Foo Fighters', posting_date: 10-31-2021, desc: "See you there!")
Event.create!(event_name: 'Learn to dance salsa', posting_date: 10-31-2021, desc: "Dance with us!")

