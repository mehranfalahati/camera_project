User.destroy_all
u1 = User.create :email => 'jack@ga.co', :password => 'chicken', :admin => true
u2 = User.create :email => 'emma@ga.co', :password => 'chicken'
puts "#{ User.count } users"

Camera.destroy_all
c1 = Camera.create :name => 'D5300', :brand => 'nikon', :price => 680
c2 = Camera.create :name => 'D7200', :brand => 'nikon', :price => 1390
puts "#{ Camera.count } cameras"


u1.cameras << c1

u1.cameras << c2
