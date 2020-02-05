# This is where you can create initial data for your app.

author = Author.create(name: "Philip K. Dick")
john   = Author.create(name: "John Fitzgerald")

book1 = Book.create(author: author, title: "Flow my Tears the Policeman said")
book2 = Book.create(author: author, title: "Do Android Dream of Electric Sheep?")

book3 = Book.create(author: john, title: "Tender is the Night")

matt = User.create(name: "Matheus", email: "matheus.penchel@gmail.com")

clelia = User.create(name: "Clelia", email: "cleclia@gmail.com")

Reading.create(user: clelia, book: book3)

Reading.create(user: matt, book: book1)
Reading.create(user: matt, book: book2)
