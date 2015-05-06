# join --- combine elements in an array into a string.
#     (join them together)
#     (will add the thing you join on between each item in array)

# split --- take a string, into an array of strings
#     (split it apart)
#     (will remove the thing you split on)

sad = "a dog runs away"
sad_words = sad.split(" ")

# print sad_words
# => ["a", "dog", "runs", "away"]

# combing array into a string

print sad_words.join(" ")

# => a dog runs away
