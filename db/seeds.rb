require("pry")
require_relative("../models/author.rb")
require_relative("../models/book.rb")

Book.delete_all()
Author.delete_all()

author1 = Author.new({
    "name" => "Iain M. Banks"
})
author1.save()

book1 = Book.new({
    "title" => "Consider Phlebas",
    "genre" => "sci-fi",
    "book_type" => "hard-back",
    "stock_level" => "10",
    "selling_price" => "20",
    "buying_price" => "10",
    "author_id" => author1.id
})
book1.save()

book2 = Book.new({
    "title" => "The Player of Games",
    "genre" => "sci-fi",
    "book_type" => "hard-back",
    "stock_level" => "10",
    "selling_price" => "20",
    "buying_price" => "10",
    "author_id" => author1.id
})
book2.save()

book3 = Book.new({
    "title" => "Use of Weapons",
    "genre" => "sci-fi",
    "book_type" => "hard-back",
    "stock_level" => "10",
    "selling_price" => "20",
    "buying_price" => "10",
    "author_id" => author1.id
})
book3.save()

author2 = Author.new({
    "name" => "Philip K. Dick"
})
author2.save()

book4 = Book.new({
    "title" => "Do Andriods Dream of Electric Sheep",
    "genre" => "sci-fi",
    "book_type" => "soft-back",
    "stock_level" => "15",
    "selling_price" => "10",
    "buying_price" => "3",
    "author_id" => author2.id
})
book4.save()

book5 = Book.new({
    "title" => "The Man in High Castle",
    "genre" => "sci-fi",
    "book_type" => "hard-back",
    "stock_level" => "10",
    "selling_price" => "15",
    "buying_price" => "7",
    "author_id" => author2.id
})
book5.save()

book6 = Book.new({
    "title" => "A Scanner Darkly",
    "genre" => "sci-fi",
    "book_type" => "hard-back",
    "stock_level" => "1",
    "selling_price" => "20",
    "buying_price" => "10",
    "author_id" => author2.id
})
book6.save()

author3 = Author.new({
    "name" => "Jonathan Kellerman"
})
author3.save()

book7 = Book.new({
    "title" => "The Museum of Desire",
    "genre" => "crime",
    "book_type" => "hard-back",
    "stock_level" => "3",
    "selling_price" => "20",
    "buying_price" => "8",
    "author_id" => author3.id
})
book7.save()

book8 = Book.new({
    "title" => "Night Moves",
    "genre" => "crime",
    "book_type" => "hard-back",
    "stock_level" => "7",
    "selling_price" => "12",
    "buying_price" => "6",
    "author_id" => author3.id
})
book8.save()

book9 = Book.new({
    "title" => "Breakdown",
    "genre" => "crime",
    "book_type" => "hard-back",
    "stock_level" => "31",
    "selling_price" => "18",
    "buying_price" => "12",
    "author_id" => author3.id
})
book9.save()

author4 = Author.new({
    "name" => "David Walliams"
})
author4.save()

book10 = Book.new({
    "title" => "Slime",
    "genre" => "childrens",
    "book_type" => "soft-back",
    "stock_level" => "5",
    "selling_price" => "6",
    "buying_price" => "2",
    "author_id" => author4.id
})
book10.save()

book11 = Book.new({
    "title" => "Bad Dad",
    "genre" => "childrens",
    "book_type" => "soft-back",
    "stock_level" => "4",
    "selling_price" => "9",
    "buying_price" => "3",
    "author_id" => author4.id
})
book11.save()

book12 = Book.new({
    "title" => "The Demon Dentist",
    "genre" => "childrens",
    "book_type" => "hard-back",
    "stock_level" => "4",
    "selling_price" => "19",
    "buying_price" => "8",
    "author_id" => author4.id
})
book12.save()

author5 = Author.new({
    "name" => "Julia Donaldson"
})
author5.save()

book13 = Book.new({
    "title" => "Slime",
    "genre" => "childrens",
    "book_type" => "soft-back",
    "stock_level" => "5",
    "selling_price" => "6",
    "buying_price" => "2",
    "author_id" => author5.id
})
book13.save()

book14 = Book.new({
    "title" => "Bad Dad",
    "genre" => "childrens",
    "book_type" => "soft-back",
    "stock_level" => "4",
    "selling_price" => "9",
    "buying_price" => "3",
    "author_id" => author5.id
})
book14.save()

book15 = Book.new({
    "title" => "Fing",
    "genre" => "childrens",
    "book_type" => "hard-back",
    "stock_level" => "0",
    "selling_price" => "18",
    "buying_price" => "7",
    "author_id" => author4.id
})
book15.save()