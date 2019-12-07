# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
t = Category.create(title: 'Osobní', color: '#ff0000')
b = Category.create(title: 'Škola ', color: '#ffed00')
n = Category.create(title: 'Práce', color: '#ff97ea')

r =Tag.create(title: 'UCL', color: '#5997ea' )
h =Tag.create(title: 'JSE', color: '#8d6bea' )
k =Tag.create(title: 'WEB', color: '#4349ea' )
o =Tag.create(title: '3DT', color: '#43f8ea' )
q =Tag.create(title: 'PR1', color: '#43aea9' )
w =Tag.create(title: 'PES', color: '#7d71a9' )
x =Tag.create(title: 'Nákupy ', color: '#7d7167' )
z =Tag.create(title: 'Wishlist ', color: '#4b7167' )
