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

robot_parts = [
  ["nuts", "bolts", "washers"],
  ["capacitors", "resistors", "inductors"]
]

robot_parts_copy = deep_dup(robot_parts)

robot_parts_copy[1] << "LEDs"

p robot_parts[1]
