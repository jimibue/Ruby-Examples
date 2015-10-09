#BASIC SYNTAX
# begin
# # -
# rescue OneTypeOfException
# # -
# rescue AnotherTypeOfException
# # -
# else
# # Other exceptions
# ensure
# # Always will be executed
# end

#RETRY
# begin
#   # Exceptions raised by this code will
#   # be caught by the following rescue clause
# rescue
#   # This block will capture all types of exceptions
#   retry  # This will move control to the beginning of begin
# end

#Raise
# raise #create a runtime error
# OR
# raise "Error Message" #create a runtime error with a given message
# OR
# raise ExceptionType, "Error Message" #create an exception with a given message
# OR
# raise ExceptionType, "Error Message" condition #create an exception with a given message given a condition

#Ensure - similar to Finally
# begin
#   #.. process
#   #..raise exception
# rescue
#   #.. handle error
# ensure
#   #.. finally ensure execution
#   #.. This will always execute.
# end

#Catch and Throw
# throw :lablename
# #.. this will not be executed
# catch :lablename do
# #.. matching catch will be executed after a throw is encountered.
# end
#
# OR
#
# throw :lablename condition
# #.. this will not be executed
# catch :lablename do
# #.. matching catch will be executed after a throw is encountered.
# end

def promptAndGet(prompt)
  print prompt
  res = readline.chomp
  throw :quitRequested if res == "!"
  return res
end

catch :quitRequested do
  name = promptAndGet("Name: ")
  age = promptAndGet("Age: ")
  sex = promptAndGet("Sex: ")
  # ..
  # process information
end
# promptAndGet("Name:")