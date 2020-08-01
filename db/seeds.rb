# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Goal.destroy_all
Map.destroy_all
Day.destroy_all

 users = User.create([{ username: 'test1', email: 'test1@email.com'}, {username: 'test2', email: 'test2@email.com'}])

 goals = Goal.create([{target: 'Run' , level: 1 , goal_slot: 1, units: {time: '00:40:00', distance: 10}},
 {target: 'Row', level: 1 , goal_slot: 2, units: {time: '00:45:00', distance: 11}},
 {target: 'Check', level: 1 , goal_slot: 3, units: {}}])

 maps = Map.create([{goal_id: Goal.first.id, user_id: User.first.id},{goal_id: Goal.last.id, user_id: User.first.id}])