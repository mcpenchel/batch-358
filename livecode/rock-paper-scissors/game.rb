answer = nil
options = ["rock", "paper", "scissors"]

until options.include?(answer)
  puts "Choose rock, paper, or scissors."
  answer = gets.chomp.downcase
end

comp_input = options.sample
puts "You chose #{answer}. Computer chose #{comp_input}"

if answer == comp_input
  puts "It's a draw."
else
  case answer
  when "rock"
    puts "You lose!" if comp_input == "paper"
    puts "You win!" if comp_input == "scissors"
  when "scissors"
    puts "You lose!" if comp_input == "rock"
    puts "You win!" if comp_input == "paper"
  when "paper"
    puts "You lose!" if comp_input == "scissors"
    puts "You win!" if comp_input == "rock"
  end
end
#Print possible options
#User chooses input
#If input is valid, proceed. If not, ask again
#Pick random computer input
#Compare user input and computer input
#Print result
