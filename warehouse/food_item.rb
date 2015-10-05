class FoodItem
  include Comparable # for <=>
  attr_reader :upc, :shelf_life, :description

  def initialize(upc, shelf_life, description)
    @upc = upc.to_s
    @shelf_life =Integer(shelf_life)
    @description = description
  end

  #this is not necessary and could be done with ==
  #but was added for demonstration
  def <=>(other)
    if self.upc < other.upc
      -1
    elsif self.upc > other.upc
      1
    else
      0
    end
  end

  def ==(other)
    #self.upc == other.upc
    true
  end

  def to_s
    "UPC: #{self.upc} SHELF LIFE: #{self.shelf_life} DESCRIPTION: #{self.description}"
  end
end

