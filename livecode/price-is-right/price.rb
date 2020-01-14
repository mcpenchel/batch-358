# Ask the user for an input
# Define the variable for the input
# Generate a random number from 1 to 100 -check
# Check if the input is equal to the number generated
# If not, keep asking for an input, and give a hint to try higher or lower
# Count how many guesses it took
max = 10000
min = 1
random_number = rand(min..max)
counter = 0
loop do
  puts "Guess the price!"
  guess = (min + max)/2
  counter += 1
  if guess > random_number
    puts "Try lower, dude!"
    max = guess
  elsif guess < random_number
    puts "Go higher!"
    min = guess
  else
    break
  end
end

puts "You won, yay! It took you #{counter} try(ies)."
