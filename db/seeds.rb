# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#delete everythind that is in the database
Complaint.destroy_all
Reporter.destroy_all

#example seed data, but isn't complete!!

@Wenwen = Reporter.create(
  uid: 12345,
  name: 'wenwen',
  nickname: 'Wen Wen',
  email: 'wxie@example.com',
)

@Jiayu = Reporter.create(
  uid: 67890,
  name: 'jiayu',
  nickname: 'Jia Yu',
  email: 'jyu@example.com',
)

@Jessica = Reporter.create(
  uid: 75345,
  name: 'jessica',
  nickname: 'Jessica De',
  email: 'jde@example.com',
)

Complaint.create(
  [
    { date: '2019-01-15', location: 'Pritzker', department: 'Maintenance', description: 'The bathroom on the third floor for the women is broken', reporter: @Wenwen },
    { date: '2019-01-20', location: 'Perlstein', department: 'Maintenance', description: 'The table in Room 104 is broken', reporter: @Jiayu },
    { date: '2019-02-14', location: 'MSV', department: 'Technology', description: 'The printer is out of toner', reporter: @Jessica }
  ]
)
