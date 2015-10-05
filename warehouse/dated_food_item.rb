require 'date'
class DatedFoodItem < FoodItem
  attr_reader :date, :expire_date

  def initialize(upc, shelf_life, description,date)
    super(upc,shelf_life,description)
    arr =date.split("/")
    year = Integer arr[2]
    month = Integer arr[1]
    day = Integer arr[0]

    @date = Date.new(year,month,day)
    @expire_date = @date + Integer(shelf_life)
    puts @expire_date
  end

  def get_expire_integer
    #%Y%_m%_d
    Integer @expire_date.strftime('%Y%_d%_m').gsub(' ' , '0')
  end
end