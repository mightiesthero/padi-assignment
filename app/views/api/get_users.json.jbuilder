json.users @users do |user|
  json.email user.email
  json.role user.role.name
end
