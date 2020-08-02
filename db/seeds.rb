# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Goal.destroy_all
Day.destroy_all
Record.destroy_all

 user = User.create({ username: 'test1', email: 'test1@email.com'})
 user2 = User.create({username: 'test2', email: 'test2@email.com'})

 goal1 = Goal.create({target: 'Run' , level: 1 , goal_slot: 1, units: {time: '00:40:00', distance: 10}})
 goal2 = Goal.create({target: 'Row', level: 1 , goal_slot: 2, units: {time: '00:45:00', distance: 11}})
 goal3 = Goal.create({target: 'Check', level: 1 , goal_slot: 3, units: {}})

 record1 = Record.create({level: 0, record_date: DateTime.new(2009,9,1,17), units: {time: '00:20:00', distance: 8}})
 record2 = Record.create({level: 0, record_date: DateTime.new(2011,10,2,18), units: {time: '00:25:00', distance: 9}})
 record3 = Record.create({level: 1, record_date: DateTime.new(2014,11,3,19), units: {time: '00:30:00', distance: 9}})

user.goals << goal1
user.goals << goal2
user.goals << goal3

goal1.records << record1
goal1.records << record2
goal1.records << record3

