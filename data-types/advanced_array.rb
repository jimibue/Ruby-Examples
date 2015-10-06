#example of 'destructuring'
x,y = [22,34]
p x #22
p y #34

cord1, cord2 = [[2,3],[4,5]]
p cord1 #[2,3]
p cord2 #[4,5]


[[1, 2, 3, 4], [12, 13]].each { |a, b| puts "#{a} #{b}" }
## 1 2
## 12 13

## above is equivalent to this
[[1, 2, 3, 4], [12, 13]].each do |element|
  a, b = element
  puts "#{a} #{b}"
end

*x = 1,2,3,4
p x #[1,2,3,4]

first, *rest = [1,2,3]
p first #1
p rest #[2,3]

*first, last = [1,2,3]
p first #[1,2]
p last #3

*first, second, last = [1,2,3]
p first #[1]
p second #2
p last #3

arr = *(1..10)
p arr #[1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

##ARRAY METHODS
arr = [1,1,2,3,4]
#COUNT -takes in a single object argument and returns the count of the array for which elements equal to that object.
p arr.count  #5
p arr.count 1 #2
#can also take in a block
p arr.count {|e| e%2!=0}  #3

#INDEX method returns the index of the object specified.
p arr.index 5 #nil
p arr.index 1 #0
# If a block is given it returns the index of the first element for which the block results to true
p arr.index {|e| e%2!=0}  #0

#FLATEN -takes md arrays and converts them into single-dimesion array, or give an argument tells how far to recurse through array
arr1 = [[1,2],[2],[3,[4,5] ] ]
p arr1.flatten #[1, 2, 2, 3, 4, 5]
p arr1.flatten 1 #[1, 2, 2, 3, [4, 5]]

#compact removes nil items
arr2 = [nil,2,3,nil]
p arr2.compact #[2,3]

#SLICE -is the same as using [] for extracting sub arrays
arr3 = [1,2,3,4,5,6,7]
p arr3.slice 2 #3
p arr3.slice 2..4 #[3,4,5]
p arr[2..4] #[2, 3, 4]
p arr[2...4] #[2, 3]

#JOIN - covert all elements into a string
p arr3.join(". ") #"1. 2. 3. 4. 5. 6. 7"

#SHIFT returns first element from array and shifts rest of array
#you can also add a parameter that determines how many items to pop of the array,
#which is returned as an array

p arr3.shift #1
p arr3 #[2, 3, 4, 5, 6, 7]

p arr3.shift 4 #[2, 3, 4, 5]
p arr3 #[6,7]

#UNSHIFT
p arr3.unshift(1,2,3,4,5) #3





