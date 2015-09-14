require_relative 'csv_reader'

reader= CsvReader.new

#used to run through the terminal  $ ruby stock_stats.rb data.csv
ARGV.each do |csv_file_name|
  STDERR.puts "Processing #{csv_file_name}"
  reader.read_in_csv_data(csv_file_name)
end

puts "Total value = #{reader.total_value_in_stock}"