# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

mike = User.find_by_email("mperham@gmail.com")
unless mike
  mike = User.create! :email => "mperham@gmail.com", :password => 'password', :password_confirmation => 'password'
end
unless mike.basic_profile
  BasicProfile.create! user_id: mike.id, formatted_name: 'Mike Perham', first_name: 'Mike', last_name: 'Perham', picture_url: 'http://www.mikeperham.com/images/head.jpg'
end
