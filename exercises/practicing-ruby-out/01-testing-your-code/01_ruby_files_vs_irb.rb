# This one is for you to understand better the basics by trying them out.

# Ever had that feeling, that you don't know if you should open irb or run rake
# or just run your ruby file?

# Yup, I know that, it's not something unusual in the bootcamp. So let's start
# with that.

x_men = ["Wolverine", "Jean Gray", "Professor X", "Magneto"]

x_men

# If you run this ruby file, nothing will show up on the terminal.

# But if you open irb and copy & paste this there, every time you type
# x_men it will print for you what was returned from reading that variable.

# Why is that?

# When Ruby returns a value to you, it is not printing that value. Just returning.
# The point of returning something and not printing, is that we're probably
# gonna want to do something with that data, so we can possibly print it later.

# So return =/= printing

# Try in IRB the following: puts x_men

# It will print the content of the array, each element in one line, and in the
# end you'll be able to see => nil

# That is because puts does the printing, but always returns nil.
# And IRB prints what is returned. That is for IRB only, not for Ruby.

# So, when executing the ruby file, the only things that will show up on the
# terminal will be the ones that you PRINT.

# And when typing ruby code on the IRB, it will PRINT everything that is returned.

# Got it? If you didn't, I want you to create variables in this file, change their values,
# call their names (by just typing the name of the variable), and print something
# in the end.

# After doing that, do the same thing in IRB and see how it prints everything that
# ruby executes and returns to you.

# Wrapping up: what is returned is not printed. Unless you're inside IRB.
# So if you're not sure of what your code is doing, test it out in IRB. Always.

# Rake runs your files for you and checks what they are returning, and see if
# those returned values meet what the tests are expecting. DON'T LEAVE IT TO RAKE,
# test it yourself!!! After you do it, you run rake to see if everything's ok.

# PS: We don't have rake for this challenges, mwahahaha. So you have to test your
# own code by running it.
