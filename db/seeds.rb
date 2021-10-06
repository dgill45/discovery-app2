# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create!(firstname: 'Abby', lastname: 'Allus')
User.create!(firstname: 'Betty', lastname: 'Black')
User.create!(firstname: 'Common', lastname: 'Carson')
User.create!(firstname: 'Delta', lastname: 'Delphina')

Profile.create!(username: 'Abster33', email: 'Abster33@gmail.com', user: user.first)
Profile.create!(username: 'Bettyliscious', email: 'Blackbetty@123.com')
Profile.create!(username: 'Common', email: 'alltoocommon@hotmail.com')
Profile.create!(username: 'Delta', email: 'doubledee@aol.com', user: user.last)

Category.create!(catergory_name: 'Sports')
Category.create!(catergory_name: 'Arts & Crafts')
Category.create!(catergory_name: 'Concerts')
Category.create!(catergory_name: 'Education')

Activity.create!(activity_name: 'Basketball', category_id: 1)
Activity.create!(activity_name: 'Crochet Class', category_id: 2)
Activity.create!(activity_name: 'Foo Fighters', category_id: 3)
Activity.create!(activity_name: 'Learn to dance salsa', category_id: 4)

Event.create!(activity_name: 'Orange Park Basketball', date: 10-31-2021, time: 9pm, desc: "Fun times", category_id: 1)
Event.create!(activity_name: 'Crochet Class at ', date: 10-31-2021, time: 9pm, desc: "Come join us!", category_id: 2)
Event.create!(activity_name: 'Foo Fighters', date: 10-31-2021, time: 9pm, desc: "See you there!", category_id: 3)
Event.create!(activity_name: 'Learn to dance salsa', date: 10-31-2021, time: 9pm, desc: "Dance with us!", category_id: 4)

