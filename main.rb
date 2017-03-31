require_relative 'lib/book'
require_relative 'lib/books_collection'

collections = BooksCollection.from_dir('./data')

collections.authors.each_with_index do |authors, i|
  puts "#{i + 1}. #{authors}"
end

author_number = STDIN.gets.to_i
author = collections.authors[author_number -1]

puts collections.random_book_by_author(author).output