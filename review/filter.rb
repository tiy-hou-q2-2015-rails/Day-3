module Enumerable
  alias :filter :select
end

food = ["tacos", "burritos", "salad", "soup"]

# objective: filter not salad

not_salad = food.filter do |item|
  item != "salad"
end

puts not_salad
