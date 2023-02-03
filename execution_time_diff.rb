def my_min(arr)
  num = 0
  i = 0
  while i < arr.length
    num = arr[i] if arr.all? { |ele| arr[i] <= ele }
    i += 1
  end
  num
end

list = [0, 3, 5, 4, -5, 10, 1, 90]
p my_min(list)

def my_min_v2(arr)
  min_num = arr[0]
  arr.each { |ele| min_num = ele if min_num > ele }
  min_num
end

# list = [0, 3, 5, 4, -5, 10, 1, 90]
# p my_min_v2(list)  # =>  -5
