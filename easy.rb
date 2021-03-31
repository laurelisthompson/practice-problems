# TWO SUM
# Given an array of integers nums and an integer target, return indices of the two numbers such that they add up to target.
# You may assume that each input would have exactly one solution, and you may not use the same element twice.
# You can return the answer in any order
def two_sum(nums, target)
  (0...nums.length - 1).each do |i1|
    x = i1 + 1
    (x...nums.length).each do |i2|
      if nums[i1] + nums[i2] == target
        return [i1, i2]
      end
    end
  end
end


# REVERSE INTEGER
# Given a signed 32-bit integer x, return x with its digits reversed. 
# If reversing x causes the value to go outside the signed 32-bit integer range [-231, 231 - 1], then return 0.
# Assume the environment does not allow you to store 64-bit integers (signed or unsigned).
def reverse(x)
    x = x < 0 ? -x.to_s.reverse.to_i : x.to_s.reverse.to_i
        
    if (x > 2147483647) || (x < -2147483648)
        x = 0
    end
    
    return x
end