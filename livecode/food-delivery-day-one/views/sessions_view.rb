class SessionsView

  def ask_for(field)
    puts "What's your #{field}?"
    gets.chomp
  end

  def wrong_credentials
    puts "Ooops, wrong credentials, pleasy try again!"
  end

  def signed_in_successfully
    puts "Signed in successfully! Welcome back :D"
  end

end
