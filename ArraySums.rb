#function to find the sum of all the numbers in arr
def sum arr
  arrSum = 0
  for x in arr
    arrSum+=x
  end
  return arrSum
end

#function to find the sum of an arr with 0, 1, or 2 numbers in it
def max_2_sum arr
  larSum = 0
  if arr.length == 0
    larSum = 0
  elsif arr.length == 1
    larSum = arr[0]
  else
    newArr = arr.sort
    larSum = newArr[newArr.length-1]+newArr[newArr.length-2]
  end
  return larSum
end

#function to find the sum equaling to n in arr (boolean return)
def sum_to_n? arr, n
  if arr.length == 1
    return false
  end
  
  #sort arr and find head and tail indices
  sorted_arr = arr.sort
  head = 0
  tail = sorted_arr.length-1
  
  #iterating through arr to find the sum that equals n
  while head < tail
    current_sum = sorted_arr[head] + sorted_arr[tail]
    if current_sum == n
      return true
    elsif current_sum < n
      head = head + 1
    else
      tail = tail - 1
    end
  end
  return false
end
