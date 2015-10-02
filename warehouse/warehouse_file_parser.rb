class WarehouseFileParser
  attr_reader :file

  def initialize(file)
    begin
      @file = File.open(file,'r')
      process_file(@file)
    rescue
      @file ="Could not open file"
    end
  end

  def process_file(file)
   #parse through all the lines and process one line at from top to bottom
   while (line = file.gets.chomp)
      case line[0]
        when "FoodItem"
          #Create new item add it to item set
        when "Warehouse"
          #Create new warehouse add it to warehouse set
        when "Start"
          #Create startdate
        when "Request"
          #stuff
        when "Recieve"
          #stuff
        when "End"
          #Sstuff
        else
          #Gracefully fail
      end
   end
  end
end