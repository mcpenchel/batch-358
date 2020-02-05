# Now that we have our schema, it's time for us to build the database!
# But we don't need to write those "CREATE TABLE ...", "ALTER TABLE..." stuff.

# We can use Active Record. Not only to create and alter tables through migrations,
# but to also map those tables to Classes in Ruby, and the rows of those tables to
# instances of those Classes.

# So, let's get started. Go inside the the-x-initiative folder, and run:

# bundle install
# rake db:create

# Now you have the environment set to play around.

# Important things to remember for this exercise:
#
#
#### MIGRATIONS ####
# 1 ) Migration files should be inside db/migrate/
# 2 ) It should be one Migration for each table
# 3 ) The order at which you create the migrations matter!!! Always create the
# independent tables first, and after that you can create the tables which holds
# foreign_keys
# 4 ) The order of the migrations is defined by the TIMESTAMP at the beginning of
# their names.
# 5 ) Go back to ActiveRecord Basics lecture and see how to write the code inside
# every migration, and how to actually create migrations.
# 6 ) To execute the ruby code inside your migration files, run on the terminal
# the following command: rake db:migrate
#
#
#### MODELS ####
# 1 ) One model per table
# 2 ) All models inherit from ActiveRecord::Base
# 3 ) Most of the models (if not all of them) will have associations, so remember
# to write them. If you don't remember the syntax, go to ActiveRecord Associations & Validations
# lecture and take a look at it.
#
#
#### TESTING YOUR CODE ####
# 1 ) Create some sample data on the db/seeds.rb file
# 2 ) Run the seeds.rb through the command rake db:seed on the terminal
# 3 ) Run rake console (a more powerfull IRB)
# 4 ) Try out the ActiveRecord inherited methods to see if your data was
# correctly created. So, for example, you could run XMan.all and see if it returns
# the X-Men you created on the seeds.rb file.
# 5 ) If you got tired of your data and want to reset your database,
# you should run on the terminal: rake db:drop db:create db:migrate

# Then you should change your db/seeds.rb file
# And after that you should run on the terminal: rake db:seed
