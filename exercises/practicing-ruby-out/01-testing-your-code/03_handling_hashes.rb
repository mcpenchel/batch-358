# Now that you are more confident with arrays, let's talk about hashes.

hash_1 = {
  :name => "Matheus Charif Penchel",
  :age => 30,
  :favorite_band => "Mastodon",
  :football_team => "Botafogo",
  :favorite_drink => "IPA Beers"
}

hash_2 = {
  name: "Matheus Charif Penchel",
  age: 30,
  favorite_band: "Mastodon",
  football_team: "Botafogo",
  favorite_drink: "IPA Beers"
}

hash_3 = {
  "name" => "Matheus Charif Penchel",
  "age" => 30,
  "favorite_band" => "Mastodon",
  "football_team" => "Botafogo",
  "favorite_drink" => "IPA Beers"
}

puts hash_1 == hash_2
puts hash_1 == hash_3
puts hash_2 == hash_3

# I've created three hashes. You can see the values are the same, and the
# text for the keys are the same.

# But I've used a different syntax for the keys. Then, I'm comparing to see if
# those hashes are ENTIRELY equal to each other.

# Run this file in ruby to see the result of my comparisons.

# Why only hash_1 and hash_2 are the same? Because their keys are the same.
# It's two different syntaxes for using SYMBOLS as keys of a hash.

# hash_3 has STRINGS as keys, so they're not the same.

# The most modern syntax is the second one, not the first :)

# As you can see, the hash gives a meaning to the elements it holds..
# "Matheus Charif Penchel" is not just any element, it is the VALUE of the
# KEY :name. So we access it by saying hash_1[:name].

# Your turn.

# 1 ) Go to IRB and create a hash with at least 3 keys and values. They should
# make sense, don't do key_1: "anything", alright?
# 2 ) We want to play with that hash. So we need to store it inside a variable.
# 3 ) I want you to change one of the values. If you don't know how to do it,
# google "how to change a value from a hash ruby" :)
# 4 ) Then, I want you to create one more key-value pair inside that hash.
# 5 ) Finally, I want you to read the values from each key. You can use a loop,
# or you can do it manually, like:

# hash_1[:name]
# hash_1[:age]
# etc...

# 6 ) After you finish doing that, I want you to write the same code inside this
# file. And when you run this file, I want it to print in the console the values
# that we're reading. So remember to use puts.
