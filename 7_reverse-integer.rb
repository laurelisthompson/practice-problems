# REVERSE INTEGER
# Given a signed 32-bit integer x, return x with its digits reversed. 
# If reversing x causes the value to go outside the signed 32-bit integer range [-231, 231 - 1], then return 0.
# Assume the environment does not allow you to store 64-bit integers (signed or unsigned).

# EXAMPLE 1:
# Input: x = 123
# Output: 321

# EXAMPLE 2:
# Input: x = -123
# Output: -321

# EXAMPLE 3:
# Input: x = 120
# Output: 21

# EXAMPLE 4:
# Input: x = 0
# Output: 0

def reverse(x)
    x = x < 0 ? -x.to_s.reverse.to_i : x.to_s.reverse.to_i
        
    if (x > 2147483647) || (x < -2147483648)
        x = 0
    end
    
    return x
end