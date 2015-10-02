class WarehouseFileParser

  def init(file)
    @file = File.open(file,'r')
  end
end