# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

def print_result(data, name, data_type)
  data = data.save ? "#{name} #{data_type} Created" : data.errors.full_messages
  puts data
end

roles = ["Sales", "Teknisi"]

roles.each do |role|
  data = Role.find_by(name: role)
  if !data
    data = Role.create(name: role)
    print_result(data, role, "role")
  end
end

users = ["beng@gmail.com"]
users.each do |user|
  data = User.find_by(email: user)
  if !data
    data = User.create(email: user, password: "123456", role_id: 1)
    print_result(data, user, "user")
  end
end
