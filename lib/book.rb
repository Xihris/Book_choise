class Book
  attr_reader :author, :title, :year

  def self.read_file(filename)
    files = File.readlines(filename).map(&:chomp)
      new(
        author: files[0],
        title: files[1],
        year: files[2]
      )
  end

  def initialize(params)
    @author = params[:author]
    @title = params[:title]
    @year = params[:year]
  end

  def output
    "#{@title}, (#{@author}, #{@year})"
  end

end