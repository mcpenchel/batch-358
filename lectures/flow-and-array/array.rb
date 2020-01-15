# CREATING array

empty_array = []
best_bands = ["Led Zeppelin", "Black Sabbath", "Mastodon", "Jethro Tull"]

# READ from an array

best_bands[0] # Led Zeppelin

# UPDATE an element of the array

best_bands[3] = "Madonna"

# ADD a new element to the array

best_bands << "Jethro Tull"

# REMOVE an element from an array

best_bands.delete("Madonna")

best_bands.delete_at(3)

# LOOP over the array and print the elements inside

best_bands.each do |band|
  puts "#{band} rocks!"
end

best_bands.each { |band| puts "#{band} rocks!" }
