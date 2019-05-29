# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
bob = User.find_or_create_by(first_name: 'Bob',last_name: 'Johnson', username: 'bobjohnson', age: 35, email: 'bobjohnson@gmail.com')
list1 = List.find_or_create_by(name: 'Bobs List', user_id: bob.id)
joke1 = Joke.find_or_create_by(id: 'qrHeiqHJmrc', phrase: "What is a vampire's favorite fruit? A blood orange.")
join1 = JokeList.find_or_create_by(list_id: list1.id, joke_id: joke1.id)

joe = User.find_or_create_by(first_name: 'Joe',last_name: 'Kelly', username: 'joekelly', age: 35, email: 'joekelly@gmail.com')
list2 = List.find_or_create_by(name: 'Joes List', user_id: joe.id)
joke2 = Joke.find_or_create_by(id: 'WgFY82ozsrc', phrase: 'R.I.P. boiled water. You will be mist.')
join2 = JokeList.find_or_create_by(list_id: list2.id, joke_id: joke2.id)
join3 = JokeList.find_or_create_by(list_id: list1.id, joke_id: joke2.id)
list3 = List.find_or_create_by(name: 'Joes List 2', user_id: joe.id)
