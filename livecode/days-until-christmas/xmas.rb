require 'date'

def days_until_christmas(year=Date.today.year,month=Date.today.month,
  day=Date.today.day)
  if month == 12 && day > 25
    return (Date.new(year+1,12,25) - Date.new(year,month,day)).to_i
  else
    return (Date.new(year,12,25) - Date.new(year,month,day)).to_i
  end
end

puts days_until_christmas.class == Integer
puts days_until_christmas == 346

