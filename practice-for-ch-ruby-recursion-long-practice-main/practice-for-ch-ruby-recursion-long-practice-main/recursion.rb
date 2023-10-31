def exponent(val, exp)

    return 1 if exp == 0
    return val if exp == 1

    val * exponent(val, exp -1)

end

# p exponent(2, 0)
# p exponent(2, 2)
# p exponent(2, 4)


# 
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

def bsearch(arr, n)
    return nil if arr.count(n) == 0
    return 0 if arr.length == 1

    sorted = arr.sort
    mid_idx = sorted.length / 2

    if arr[mid_idx] == n
        return mid_idx
    end

    left = sorted[0...mid_idx]
    right = sorted[mid_idx + 1 .. -1]

    if sorted[mid_idx] < n
        bsearch(right, n)
    else
        bsearch(left, n)

    # sorted = arr.sort
    # mid_idx = sorted.length / 2

    # if sorted[mid_idx] == n
    #     return mid_idx
    # elsif sorted[mid_idx] > n
    #     bsearch(arr[0...mid_idx], n)
    # elsif sorted[mid_idx] < n
    #     bsearch(arr[mid_idx+1..-1], n)
    # end

    # arr[1..-1]


end

# p bsearch([1, 2, 3], 1) # => 0
# p bsearch([2, 3, 4, 5], 3) # => 1
# p bsearch([2, 4, 6, 8, 10], 6) # => 2
# p bsearch([1, 3, 4, 5, 9], 5) # => 3
# p bsearch([1, 2, 3, 4, 5, 6], 6) # => 5
# p bsearch([1, 2, 3, 4, 5, 6], 0) # => nil
# p bsearch([1, 2, 3, 4, 5, 7], 6) # => nil

def merge_sort(array)

end

def merge(arr1, arr2)

end
