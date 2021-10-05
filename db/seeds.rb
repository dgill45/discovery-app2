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

Profile.create!(username: 'Abster33', email: 'Abster33@gmail.com')
Profile.create!(username: 'Bettyliscious', email: 'Blackbetty@123.com')
Profile.create!(username: 'Common', email: 'alltoocommon@hotmail.com')
Profile.create!(username: 'Delta', email: 'doubledee@aol.com')

