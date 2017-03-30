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
    Time.now + (60 * 60 * 24 * 7) #1 week
  end

  def self.overdue_books
    @@on_loan.each do |book|
      if book.due_date < Time.now
        puts book
      end
      end
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
    if lent_out? == true
      puts "Sorry #{title} is already borrowed"
      @@on_shelf.include?(@title)
    elsif lent_out? != true
      @due_date = Book.current_due_date
      @@on_shelf.delete(self)
      @@on_loan.push(self)
      "You have borrowed #{@title} and it is due back #{@due_date}"
    end
  end

  def return_to_library
    if lent_out? != true
      puts "This book is not loaned out"
    else
      @due_date = nil
      @@on_loan.delete(self)
      @@on_shelf.push(self)
      "Thank you for returning #{@title}"
    end
  end

  def lent_out?
    @@on_loan.include?(self)
  end

  def renew
    @due_date = Time.now + (60 * 60 * 24 * 7)
    "You have renewed #{@title}, it's new due date is #{@due_date}"
  end

end

sister_outsider = Book.create("Sister Outsider", "Audre Lorde", "9781515905431")
aint_i = Book.create("Ain't I a Woman?", "Bell Hooks", "9780896081307")
if_they_come = Book.create("If They Come in the Morning", "Angela Y. Davis", "0893880221")
