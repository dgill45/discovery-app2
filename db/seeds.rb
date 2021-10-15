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

user1 = User.create!(firstname: 'Abby', lastname: 'Allus', username: 'Abster33')
user2 = User.create!(firstname: 'Betty', lastname: 'Black', username: 'Bettyliscious')
user3 = User.create!(firstname: 'Common', lastname: 'Carson', username: 'Common')
user4 = User.create!(firstname: 'Delta', lastname: 'Delphina', username: 'Delta')

profile1 = Profile.create!(username: 'Abster33', email: 'Abster33@gmail.com', user_id: User.first.id)
profile2 = Profile.create!(username: 'Bettyliscious', email: 'Blackbetty@123.com', user_id: User.second.id)
profile3 = Profile.create!(username: 'Common', email: 'alltoocommon@hotmail.com', user_id: User.third.id)
profile4 = Profile.create!(username: 'Delta', email: 'doubledee@aol.com', user_id: User.fourth.id)

category1 = Category.create!(category_name: 'Sports')
category2 = Category.create!(category_name: 'Arts & Crafts')
category3 = Category.create!(category_name: 'Concerts')
category4 = Category.create!(category_name: 'Group Dance')

activity1 = Activity.create!(activity_name: 'Basketball', category_id: Category.first.id)
activity2 = Activity.create!(activity_name: 'Crochet Class', category_id: Category.second.id)
activity3 = Activity.create!(activity_name: 'Foo Fighters World Tour', category_id: Category.third.id)
activity4 = Activity.create!(activity_name: 'Learn to dance salsa', category_id: Category.fourth.id)

event1 = Event.create!(event_name: 'Orange Park Basketball', posting_date: 10-31-2021, desc: "Fun times", activity_id: Activity.first.id)
event2 = Event.create!(event_name: 'Crochet Class at The Winehouse', posting_date: 10-31-2021, desc: "Come join us!", activity_id: Activity.second.id)
event3 = Event.create!(event_name: 'Foo Fighters at Prudential Center', posting_date: 10-31-2021, desc: "See you there!", activity_id: Activity.third.id)
event4 = Event.create!(event_name: 'Salsa by Vicki', posting_date: 10-31-2021, desc: "Dance with us!", activity_id: Activity.fourth.id)

