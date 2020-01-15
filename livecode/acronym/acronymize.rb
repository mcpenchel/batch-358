def acronymize(phrase)
  words = phrase.split(" ")
  letters = []
  words.each { |word| letters << word[0] }
  letters.join.upcase
end

# split the string in a array with each word
# interate the word for the first letter of each word
# store each letter in a array
# upcase the new string

puts acronymize("string with more words") == "SWMW"
puts acronymize("word") == "W"
puts acronymize("") == ""
