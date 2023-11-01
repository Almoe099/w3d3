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


def merge_sort(array)
    return array if array.length <= 1

    mid_idx = array.length / 2

    left = array[0...mid_idx]
    right = array[mid_idx..-1]

    merge(merge_sort(left), merge_sort(right))

end

def merge(arr1, arr2)
    new_arr = []
    while arr1.length != 0 && arr2.length != 0
        if arr1[0] < arr2[0]
            new_arr << arr1.shift
        else
            new_arr << arr2.shift
        end
    end
    new_arr + arr1 + arr2
end


def subsets(arr)
    return [arr] if arr.length == 0
    return [[]] + [arr] if arr.length == 1

   last = arr.last

   subsets(arr[0...-1]) << [last] << [1, 3] << [2,3] << arr
   
end

p subsets([]) # => [[]]
p subsets([1]) # => [[], [1]]
p subsets([1, 2]) # => [[], [1], [2], [1, 2]]
p subsets([1, 2, 3])
# => [[], [1], [2], [1, 2], [3], [1, 3], [2, 3], [1, 2, 3]]



# def permutations
# end