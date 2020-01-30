# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  if arr.length == 0
    j = 0
    return j
  
  else
    j = 0
    for i in arr
      j = j + i
    end
    return j
  end
  
end




def max_2_sum arr
  # YOUR CODE HERE
  
  maxarr = arr.max(2)
  
  arrsum = maxarr.sum
  
  return arrsum
  
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  if arr.length == 0
    return false
    
  elsif arr.length == 1
    return false
    
  else
    arrayperm = arr.permutation(2).to_a
    for i in arrayperm
      if i.sum == n
        return true
      end
    end
    return false
  end
  
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  string1 = "Hello, "
  string1.concat(name)
  return string1
end

def starts_with_consonant? s
  # YOUR CODE HERE
  s.downcase
  vowels = ["a", "e", "i", "o", "u"]
  if s.length == 1
    for i in vowels
      if s[0] == i
        return false
      end
    end
    return true
  
  elsif s[0] == /[a-z]/
    for i in vowels
      if s[0] == i
        return false
      end
    end
    return true
  end
  
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  
  if /\p{Nd}/.match(s)
    if /[0-1]/.match(s)
      is_binary = true
    else
      is_binary = false
    end
  end
  
  if is_binary == true
    num = s.to_i(2)
    if (num % 4) == 0
      return true
    else 
      puts "binary false"
      return false
    end
  else
    puts "nan"
    return false
  end
  
end

puts binary_multiple_of_4?("a100")


# Part 3

class BookInStock
# YOUR CODE HERE
end
