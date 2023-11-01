def exponent(val, exp)

    return 1 if exp == 0
    return val if exp == 1

    val * exponent(val, exp -1)

end

# p exponent(2, 0)
# p exponent(2, 2)
# p exponent(2, 4)

def deep_dup


    
end
