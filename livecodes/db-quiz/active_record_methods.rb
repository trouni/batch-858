# 1. Add your favorite author to the DB
author = Author.new(name: 'Haruki Murakami')
# ⛔️ Author.new('Haruki Murakami')
# ⛔️ Author.new(name = 'Haruki Murakami')
author.save
# or Author.create (new + save)

# 2. Get all authors
Author.all
# ⛔️ author.all

# 3. Get author with id=8
Author.find(8)
# ⛔️ Author.find(id: 8)

# 4. Get author with name="Jules Verne", store it in a variable: jules
jules = Author.find_by(name: 'Jules Verne')
# jules = Author.find_by_name('Jules Verne')

# 5. Get Jules Verne's books
jules.books
Book.where(author: jules)
# ⛔️ Book.where(author: 'Jules Verne') # we need to pass an instance of author, not a string

# 6. Create a new book "20000 Leagues under the Seas", it's missing in DB.
twenty_thousand = Book.new(title: '20000 Leagues under the Seas')
# Store it in a variable: twenty_thousand
twenty_thousand.save

# 7. Add Jules Verne as this book's author
twenty_thousand.author = jules
# ⛔️ twenty_thousand.author = 'Jules Verne'

# 8. Now save this book in the DB!
twenty_thousand.save
# twenty_thousand.update(author: jules) # same as = + save

