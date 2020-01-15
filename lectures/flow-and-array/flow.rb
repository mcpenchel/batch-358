# # Ruby is truthy, which means, when talking about
# # conditions, if it's not nil or false, it's CONSIDERED true

# puts "What's your age?"
# age = gets.chomp.to_i

# if age >= 18
#   puts "You can vote"
# else
#   puts "You can't vote YET."
# end

# puts "heads or tails?"
# choice = gets.chomp

# coin = ["heads", "tails"].sample

# # condition ? code_when_truthy : code_when_false

# word = choice == coin ? "win" : "lose"
# puts "You #{word}, the result was #{coin}"

# hour = Time.now.hour

# if hour < 12
#   puts "Good morning"
# elsif hour > 20
#   puts "Good night"
# elsif hour > 12
#   puts "Good afternoon"
# else
#   puts "Lunch time"
# end


# puts "What operation you want? [read/write/exit]"
# operation = gets.chomp

# case operation
# when "read"
#   puts "Entering read mode..."
# when "write"
#   puts "Entering write mode..."
# when "exit"
#   puts "Byeeeee"
# else
#   puts "Wrong operation."
# end

# # puts "You can vote" if age >= 18
# # puts "You can vote" unless age < 18

# hour = Time.now.hour

# if (hour >= 9 && hour < 12) || (hour >= 14 && hour <= 18)
#   puts "It's open!"
# else
#   puts "Come back later"
# end

# Find the right price

price = rand(1..5)
guess = nil

while guess != price
  puts "What price do you guess, between 1 and 5?"
  guess = gets.chomp.to_i
end

until guess == price
  puts "What price do you guess, between 1 and 5?"
  guess = gets.chomp.to_i
end

puts "You win! The price was #{price}"

for num in [1, 2, 3]
  puts num
end
