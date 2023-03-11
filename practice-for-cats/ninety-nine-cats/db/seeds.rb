# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Cat.destroy_all

c1 = Cat.create!(birth_date: '2010/01/01', color: 'brown', name: 'bob', sex: 'M')
c2 = Cat.create!(birth_date: '2009/01/01', color: 'black', name: 'george', sex: 'M')
c3 = Cat.create!(birth_date: '2008/01/01', color: 'grey', name: 'sam', sex: 'M')
c4 = Cat.create!(birth_date: '2007/01/01', color: 'white', name: 'marnie', sex: 'F')
c5 = Cat.create!(birth_date: '2006/01/01', color: 'yellow', name: 'minnie', sex: 'F')