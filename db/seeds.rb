# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
courses = Course.create([
  { name: 'Diane Von Furstenburg Teaches Fashion Branding', vanity_name: 'dvf' },
  { name: 'Garry Kasparov Teaches Chess', vanity_name: 'gk' },
  { name: 'Herbie Hancock Teaches Jazz', vanity_name: 'hh' },
  { name: 'Marc Jacobs Teaches Fashion', vanity_name: 'mj' },
  { name: 'Bob Woodward Teaches Journalism', vanity_name: 'bw' },
  { name: 'Stephen Curry Teaches Basketball', vanity_name: 'sc' },
  { name: 'Ron Howard Teaches Production', vanity_name: 'rh' }
])

courses.each do |course|
  Board.create(name: "#{course.name} - Pre-Enroll Board", course_id: course.id, kind: 'pre_enroll')
  Board.create(name: "#{course.name} - Early Access Board", course_id: course.id, kind: 'early_access')
end