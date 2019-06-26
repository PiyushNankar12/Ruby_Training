# Only usig bloacks we do't have code reusability

people_one = [5, 54,34, 35, 56, 32, 221, 56]
people_two = [50, 4, 3, 5, 56, 32, 221, 56]

group_one = people_one.select { |age| age > 30}
group_two = people_two.select { |age| age > 30}


puts "Group 1 :: "+"#{group_one}"

puts "Group 2 :: "+"#{group_two}"