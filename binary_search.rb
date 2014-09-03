#Binary vs Linear Searching
#Write an example demonstrating Binary Search.  Write an example demonstrating Linear Search. 
# Hint: A linear search looks down a list, one item at a time, without jumping. in complexity 
# terms this is an O(n) search - the time taken to search the list gets bigger at the same rate
# as the list does.  A binary search is when you start with the middle of a sorted list, and see
# whether that's greater than or less than the value you're looking for, which determines whether
# the value is in the first or second half of the list

def binary(array, low, high, num)
  if array.empty?
    nil
  else
    # low=0
    # high=array.length
    sorted_array = array.sort
    if low == high
      array[low]==num ? array[low] : nil
    else
      mid = (low+high)/2
      if array[mid]>num
        binary(array,low,mid-1,num)
      else
        binary(array,mid,high,num)
      end
    end
  end
end
binary([1,2,3,4,5,6,8,9],0,7,6)

def linear(array, num) #method if they want the number
  # array = [1,4,5,7]
  # num = 5
  array.select do |a|
    if a == num
      a
    end
  end
end

linear([1,4,5,7], num)

def linear(array, num) #method if they want the index of the array with matching number
  # array = [1,4,5,7]
  # num = 5
  array.index{|a| a==num}
end
linear([1,4,5,7], num)