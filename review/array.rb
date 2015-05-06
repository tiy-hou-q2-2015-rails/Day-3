# select & map & each & reject

* select: filters an array (based on condition), returns new array
* map: creates a new array (of last thing in block), returns new array
* each: loops over each item in list. Returns the same array
* reject: filters an array (selects where condition fails), returns new array


food = ["tacos", "burritos", "salad", "soup"]

# objective: filter not salad

not_salad = food.select do |item|
  item != "salad"
end

# below is the same as above. Use the above.
not_salad = []
food.each do |item|
  if item != "salad"
    not_salad << item
  end
end

not_salad = food.reject do |item|
  food == "salad"
end

# objective: proper case the food

proper_case = food.map do |item|
  item.capitalize
end

# objective: list out each food

food.each do |item|
  puts "Item to eat: #{item}"
end
