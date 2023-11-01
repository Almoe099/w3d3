def exponent(val, exp)

    return 1 if exp == 0
    return val if exp == 1

    val * exponent(val, exp -1)

end

# p exponent(2, 0)
# p exponent(2, 2)
# p exponent(2, 4)

def deep_dup(arr)
 return [arr] if !arr.is_a?(Array)

 dupe = []

    arr.each do |ele|
        if !ele.is_a?(Array)
        dupe << ele
        else
        dupe += deep_dup(ele)
        end
    end

    return dupe
end

# robot_parts = [
#   ["nuts", "bolts", "washers"],
#   ["capacitors", "resistors", "inductors"]
# ]

# robot_parts_copy = deep_dup(robot_parts)

# robot_parts_copy[1] << "LEDs"

# p robot_parts[1]

def fibonacci(n)
    return [] if n == 0
    return [0] if n == 1
    return [0, 1] if n == 2
    
    prev_arr = fibonacci(n-1)
    prev_arr << prev_arr[-1] + prev_arr[-2]

end

# p fibonacci(6)

def bsearch(arr, t)

    return nil if arr.length == 0

    mid_idx = arr.length / 2
    return mid_idx if arr[mid_idx] == t

    left = arr[0...mid_idx]
    right = arr[mid_idx+1..-1]

    if t < arr[mid_idx]
        bsearch(left, t)
    else
        if bsearch(right, t) == nil
            return nil
        else
            bsearch(right, t) + mid_idx + 1
        end
    end

end

p bsearch([1, 2, 3], 1) # => 0
p bsearch([2, 3, 4, 5], 3) # => 1
p bsearch([2, 4, 6, 8, 10], 6) # => 2
p bsearch([1, 3, 4, 5, 9], 5) # => 3
p bsearch([1, 2, 3, 4, 5, 6], 6) # => 5
p bsearch([1, 2, 3, 4, 5, 6], 0) # => nil
p bsearch([1, 2, 3, 4, 5, 7], 6) # => nil


def merge_sort(array)
    return array if array.length <= 1

end

def merge(arr1, arr2)

    arr1 + arr2

end

# arr = [6, 5, 3, 1, 8, 7, 24]

arr = [17, 12]
17 <=> 12 == -1 swap
17 <=> 12 ==  1 keep
17 <=> 12 == -1

