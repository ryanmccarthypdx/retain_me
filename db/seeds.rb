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
if mike.basic_profile
  mike.basic_profile.destroy
end
BasicProfile.create! user_id: mike.id, formatted_name: 'Mike Perham',
  first_name: 'Mike', last_name: 'Perham',
  location: 'Portland, OR',
  industry: 'Software',
  picture_url: 'http://www.mikeperham.com/images/head.jpg',
  public_profile_url: 'http://linkedin.com/profile/mperham',
  professional_brand_statement: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec a diam lectus. Sed sit amet ipsum mauris. Maecenas congue ligula ac quam viverra nec consectetur ante hendrerit. Donec et mollis dolor. Praesent et diam eget libero egestas mattis sit amet vitae augue. Nam tincidunt congue enim, ut porta lorem lacinia consectetur. Donec ut libero sed arcu vehicula ultricies a non tortor. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean ut gravida lorem. Ut turpis felis, pulvinar a semper sed, adipiscing id dolor. Pellentesque auctor nisi id magna consequat sagittis. Curabitur dapibus enim sit amet elit pharetra tincidunt feugiat nisl imperdiet. Ut convallis libero in urna ultrices accumsan. Donec sed odio eros. Donec viverra mi quis quam pulvinar at malesuada arcu rhoncus. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. In rutrum accumsan ultricies. Mauris vitae nisi at sem facilisis semper ac in est.',
  passion: 'I love to build technology which makes building businesses easier.',
  strengths: "I have decades of tech experience and years of experience in many different verticals."
