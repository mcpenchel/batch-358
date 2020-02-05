# Oh my, you're reaching Object Oriented Programming!!!
# Did you know that it took me ONE YEAR in university to start having lessons
# about this super interesting topic?

# Yup. And you reached it in what, 2 weeks? 3 weeks?

# So don't be hard on yourself. This requires a whole new level of abstraction.

# READ THIS: https://www.dummies.com/programming/java/understanding-classes-and-objects/
# Reading time: 2 minutes

# For me, every football team has a name, a history and a number of supporters.
# So, I can do:

class FootballTeam

end

# To define the FootballTeam class. But still, I didn't set up the attributes
# that every football team should have. For me to do that, I need instance variables.

# Why instance variables? Every variable is accessible only in the context where
# it was created. So if you create a variable inside a method, it will only exist
# inside that method. Not anywhere else.

# But an instance variable is accessible in the whole instance of a class.
# And that instance keeps that variable stored as longs as the instance is alive in
# the memory of our computers.

# So, where better to create those instance variables than at the moment that we
# create a new instance of a class? That's why we were doing it inside the
# initialize method.

class FootballTeam
  def initialize(attributes = {})
    @name = attributes[:name]
    @history = attributes[:history]
    @number_of_supporters = attributes[:number_of_supporters]
  end

  def presentation
    "This is #{@name}, with #{@number_of_supporters} supporters.\n\nAnd this is the history of the club: #{@history}"
  end
end

# Can you see that inside the instance method presentation (so, a method that we can
# execute on an instance of the FootballTeam class), I've used the three
# instance variables that we are expecting to receive as parameters when we
# create a new football team?

botafogo_history = "Botafogo was the back-bone of Brazil's national team in the
60's and 70's, being an important part of Brazil's victories in 1958, 1962 and 1970.

With interesting and folkloric players throughout it's history, Botafogo is considered
to be a charming football team. It's supporters are very superstitious, and they are
waiting for the day that the club will return to it's former glory."

botafogo = FootballTeam.new(
  name: "Botafogo",
  history: botafogo_history,
  number_of_supporters: 200_000_000
)

puts botafogo.presentation

# Pretty cool, huh?
# Do you agree that, following this "cake pan" we could create any other football
# team of the world?

puts "====================="

flamengo = FootballTeam.new(
  name: "Flamengo",
  history: "Bad team, had luck in the 80's and in 2019.",
  number_of_supporters: 100
)

puts flamengo.presentation

# IF YOU REACHED THIS PART WITHOUT EXECUTING THIS FILE,
# IT'S TIME TO EXECUTE IT. Mwahahaha. Then keep reading.

# Right now, the instance variables are locked inside the instance. So only instance
# methods can read or change them.

# If we want to read them from outside, we need to create an attr_reader.
# If we want to change their values from the outside, we need attr_writer.
# And if we are reading and writing the same instance variable, why not create an
# attr_accessor (which is basically attr_reader + attr_writer)

# You didn't exercise on this, but don't be sad. The next one is on you!
