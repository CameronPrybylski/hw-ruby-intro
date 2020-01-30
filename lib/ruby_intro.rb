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
  vowels = ["a", "e", "i", "o", "u", "A", "E", "I", "O", "U"]
  if s.length == 1
    for i in vowels
      if s[0] == i
        return false
      end
    end
    return true
  
  elsif /[a-zA-Z]/.match(s[0])
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
  
  if s.delete('01') == ''
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
      return false
    end
  else
    return false
  end
  
end


# Part 3

class BookInStock
# YOUR CODE HERE
  def initialize(isbn, price)
    if isbn == '' or price <= 0.0
      [1, 2, 3].first(4, 5)
    end
    @isbn = isbn
    @price = price
  end
  def isbn
    @isbn
  end
  def price
    @price
  end
  def isbn=(isbn) 
    @isbn = isbn 
  end
  def price=(price) 
    @price = price 
  end
  def price_as_string
    string = "$"
    newprice = '%.2f' % price
    string.concat(newprice.to_s)
    return string
  end
  

end
