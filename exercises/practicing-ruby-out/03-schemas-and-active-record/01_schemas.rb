# Alriiighhhhttt, we arrived at schemas.

# What is a schema?
# The term "schema" refers to the organization of data as a blueprint of how
# the database is constructed.

# So, it is the drawing of tables, of columns of those tables, and how those
# tables connect with each other.

# Let's take a look at this scenario:

# The X-men are divided into Squads. An X-man can only be part of one
# squad at a time. So we can say that a Squad has many X-mens.
# The squad has a title as well, like 'Defenders of the Pacific'.

# Emergencies happen around the world, so they have a location. And they
# can be solved or not solved.

# An emergency may require multiple squads to be solved.
# This means that an emergency has_many squads, and a squad has_many emergencies.
# So, this is a Many to Many relationship.

# For us to represent a Many to Many relationship, we need a join table between
# emergencies and squads. It could be emergency_squads, or battle_plan, or
# whatever name suits you for the idea that it is a table that contains both
# the emergency_id and the squad_id.

# Go to db.lewagon.org and build the schema for this, connecting foreign_keys
# and everything.

# After you're satisfied with your schema, send me a printscreen of it on Slack!!!

puts "You can only learn through trial and error, so let's try it!"
