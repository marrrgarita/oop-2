class Book
  @@on_shelf = []
  @@on_loan = []

  attr_accessor :due_date

  def self.on_shelf
    @@on_shelf
  end

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
  end

  def self.available
  end

  def self.borrowed
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
