# O(n^2)
def my_min(arr)
  num = 0
  i = 0
  while i < arr.length
    num = arr[i] if arr.all? { |ele| arr[i] <= ele }
    i += 1
  end
  num
end

# list = [0, 3, 5, 4, -5, 10, 1, 90]
# p my_min(list)

# O(n)
def my_min_v2(arr)
  min_num = arr[0]
  arr.each { |ele| min_num = ele if min_num > ele }
  min_num
end

# list = [0, 3, 5, 4, -5, 10, 1, 90]
# p my_min_v2(list)

# O(n^2)
def largest_contiguous_subsum(arr)
  f_arr = []
  arr.each_with_index do |ele, i|
    arr.each_with_index do |ele, j|
      if i <= j
        f_arr << arr[i..j]
      end
    end
  end
  max = f_arr[0].sum
  f_arr.each do |sub_arr|
    max = sub_arr.sum if max < sub_arr.sum
  end

  max
end

# list = [5, 3, -7]
# p largest_contiguous_subsum(list)

def largest_contiguous_subsum_2(arr)
  largest_sum = arr[0]
  current_sum = 0
  arr.each do |i|
    current_sum += i
    if current_sum > largest_sum
      largest_sum = i
    elsif current_sum < 0
      current_sum = 0
    end
  end
  largest_sum
end

list = [5, 3, -7]
p largest_contiguous_subsum_2(list)
