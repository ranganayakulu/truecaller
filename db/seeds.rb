20.times do |n|
  user = {}
  user[:first_name] = Faker::Name.first_name
  user[:last_name] = Faker::Name.last_name
  user[:gender] = Faker::Gender.binary_type
  user[:seed] = ('2020' + (n+1).to_s).to_i
  case n+1
  when 1,6,11,16
    user[:region] = 'Andhra Pradesh'
    user[:sub_region] = 'Vijayawada'
  when 2,7,12,17
    user[:region] = 'Tamil Nadu'
    user[:sub_region] = 'Chennai'
  when 3,8,13,18
    user[:region] = 'Kerala'
    user[:sub_region] = 'Kochi'
  when 4,9,14,19
    user[:region] = 'Telangana'
    user[:sub_region] = 'Hyderabad'
  else
    user[:region] = 'Karnataka'
    user[:sub_region] = 'Bengaluru'
  end
  puts user.inspect
  User.create!(user)
end
