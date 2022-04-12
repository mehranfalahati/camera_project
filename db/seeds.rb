User.destroy_all
u1 = User.create :email => 'jack@ga.co', :password => 'chicken', :admin => true
u2 = User.create :email => 'emma@ga.co', :password => 'chicken'
puts "#{ User.count } users"

Camera.destroy_all
c1 = Camera.create :name => 'D5300', :brand => 'nikon'
c2 = Camera.create :name => 'D7200', :brand => 'nikon'
puts "#{ Camera.count } cameras"

Rate.destroy_all
r1 = Rate.create :name => 'Jack Emerson', :comment => 'hello'
r2 = Rate.create :name => 'Emma Bridgstone'
puts "#{ Rate.count } rates"


u1.cameras << c1
u1.rates << r1
c1.rates << r1



