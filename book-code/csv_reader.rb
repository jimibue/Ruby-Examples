require 'csv'#read csv files
require_relative 'book_in_stock'#import our books class

class CsvReader
  def initialize
    @books_in_stock = []
  end

  #open file with csv library, headers: true tells library to parse first line as name of the columns.
  #Parses row by row and push it on the array
  def read_in_csv_data(csv_file_name)
    CSV.foreach(csv_file_name, headers: true) do |row|
       @books_in_stock << BookInStock.new(row["ISBN"], row["Price"])
    end
  end
  #find total value
  def total_value_in_stock
    sum = 0.0
    @books_in_stock.each {|book| sum += book.price}
    sum
  end
  def number_of_each_isbn

  end
end