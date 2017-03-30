class Book
  @@on_shelf = []
  @@on_loan = []

  attr_accessor :due_date
  attr_reader :title, :author, :isbn

  def self.create(title, author, isbn)
    b = Book.new(title, author, isbn)
    @@on_shelf.push(b)
    return b
  end

  def self.current_due_date
  end

  def self.overdue_books
  end

  def self.browse
    return @@on_shelf.sample
  end

  def self.available
    @@on_shelf.each do |book|
      puts "* #{book.title} By: #{book.author}"
    end
  end

  def self.borrowed
    @@on_loan.each do |book|
      puts "* #{book.title} By: #{book.author}"
    end
  end

  def initialize(title, author, isbn)
    @title = title
    @author = author
    @isbn = isbn
  end

  def borrow
  end

  def return_to_library
  end

  def lent_out?
  end

end
