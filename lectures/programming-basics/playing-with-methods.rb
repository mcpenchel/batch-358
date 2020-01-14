require 'date'

def greet(name)
  return "Greetings, old friend #{name}"
end

puts greet("Matt")
puts greet("Milene")

driver_name = "Pedro"
puts greet(driver_name)


def full_name(first_name, last_name)
  name = "#{first_name.capitalize} #{last_name.capitalize}"
  name
end

puts full_name("MATHEUS", "PENCHEL")

def bigger_number(x, y)
  if x > y
    return x
  else
    return y
  end
end

puts bigger_number(14, 2)

first_n = 20
second_n = 30

max_number = bigger_number(first_n, second_n)
puts max_number

def tomorrow
  tomorrow_date = Date.today + 1
  tomorrow_date.strftime('%m/%d/%Y')
end

puts tomorrow
