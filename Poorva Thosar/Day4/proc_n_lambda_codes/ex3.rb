# Only usig proc we increased code reusability

people_one = [5, 54,34, 35, 56, 32, 221, 56]
people_two = [20, 50, 4, 3, 5, 56, 32, 221, 56]


# proc named over_thirty is defined
over_thirty =  Proc.new { |age| age > 30}
over_twenty_one =  Proc.new { |age| age > 21}                  

#Used Proc
group_one = people_one.select(&over_thirty)

#Used block
group_two = people_two.select(&over_twenty_one)


puts "Group 1 :: "+"#{group_one}"
puts "Group 2 :: "+"#{group_two}" 