# book_repository.rb
class BookRepository
  def initialize
    @books = []
  end

  def add(book)
    @books << book
  end

  def find_by_id(id)
    @books.find { |book| book.id == id }
  end

  def delete(id)
    book = find_by_id(id)
    return false unless book

    @books.delete(book)
    
  end

  def all
    @books
  end
end