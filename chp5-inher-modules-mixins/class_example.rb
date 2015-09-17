class Thing
  attr_reader :read_only # ruby will create instance variable and getter
  attr_accessor :read_write # ruby will create instance variable and getter

  @class_instance_variable = 0
  @@class_variable = 0 #using class variables is bad style in ruby, because when inheritance is involved
  ##they are unpredicable and act like global variables
  $global = 0

  def initialize(read_only, read_write)
    @read_only = read_only
    @read_write = read_write
    @instance_variable =0
    @@instace_class_variable =0
  end

  #class Method
  def Thing.classMethod
    puts "class Method"
    puts "@class_instance_variable = #{@class_instance_variable}"
    puts "$gobal= #{$global}"
    puts "@@class_variable = #{@@class_variable}"
    puts "@read_write  = #{@read_write }"#nil
    puts " @@instace_class_variable  = #{@@instace_class_variable}"
    puts " @instance_variable  = #{@instance_variable}"#nil
    puts"end class method"
  end

  def instanceMethod
    puts "start instance Method"
    puts "@class_instance_variable = #{@class_instance_variable}"    #nil
    puts "$gobal= #{$global}"
    puts "@@class_variable = #{@@class_variable}"
    puts "@read_write  = #{@read_write }"
    puts " @@instace_class_variable  = #{@@instace_class_variable}"
    puts " @instance_variable  = #{@instance_variable}"
    puts "end instance Method"
  end


end

th = Thing.new('read!','read-write!')
puts th.inspect
Thing.classMethod
puts "______________"
th.instanceMethod

puts "global #{$global}"


p "finished!"