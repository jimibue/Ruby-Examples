class FoodItem
  attr_reader :upc, :shelf_life, :description

  def initialize(upc, shelf_life, description)
    @upc = upc.to_s
    @shelf_life =Integer(shelf_life)
    @description = description
  end
end