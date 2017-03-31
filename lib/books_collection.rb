class BooksCollection
  def self.from_dir(dir_path)
    books =
      Dir[dir_path + '/*.txt'].map do |file|
        Book.read_file(file)
      end

    new(books)
  end

  def initialize(books)
    @books = books
  end

  def books_by_author
    @books.group_by(&:author)
  end

  def authors
    books_by_author.keys
  end

  def random_book_by_author(author)
    books_by_author[author].sample
  end

end