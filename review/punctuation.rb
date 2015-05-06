greeting = "Oh, hello there. My name is JWo."
# objective get the words, all downcase. No punctuation.

greeting.gsub!(",", "")
greeting.gsub!(".", "")

# print greeting.split(" ").map { |item| item.downcase }
print greeting.downcase.split(" ")
