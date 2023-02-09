# frozen_string_literal: true

# Part 1

def sum(arr)
  # YOUR CODE HERE
  #sum of arr
  sum = 0
  arr.each do |i|
    #puts "#{i}"
    sum += i
  end
  return sum
  
end

def max_2_sum(arr)
  # YOUR CODE HERE
  #sum of its two largest elements
  sum = 0
  if arr.length == 0
    return 0
  elsif arr.length == 1
    return arr[0]
  else
    arr.sort!
    sum = arr[-1] + arr[-2]
    return sum
  end
end

def sum_to_n?(arr, number)
  # YOUR CODE HERE
  #sum of two different elements
  n = number
  if arr.length == 0
    return false
  elsif arr.length == 1
    return false
  else
    arr.each do |i|
      arr.each do |j|
        if i + j == n
          #puts "#{i} + #{j} = #{n}"
          if i == j
            return false
          end
          return true
        end
      end
    end
  end
  return false

end

# Part 2

def hello(name)
  # YOUR CODE HERE
  return "Hello, #{name}"
end

def starts_with_consonant?(string)
  # YOUR CODE HERE
  #if empty string
  if string.length == 0
    return false
  end
  #if not a letter
  if string[0] =~ /[^a-zA-Z]/
    return false
  end
  if string[0] =~ /[aeiouAEIOU]/
    return false
  end
  return true

end

def binary_multiple_of_4?(string)
  # YOUR CODE HERE
  #if empty string
  if string.length == 0
    return false
  end
  #Check if binary number
  if string =~ /[^01]/
    return false
  end
  if string.to_i(2) % 4 == 0
    return true
  end
  return false
end

# Part 3

# Object representing a book
class BookInStock
  # YOUR CODE HERE
  #allow getters and setters
  attr_accessor :isbn
  attr_accessor :price
  def initialize(isbn, price)
    #if empty string
    if isbn.length == 0
      raise ArgumentError.new("ISBN cannot be empty")
    end
    #if price is less than or equal to 0
    if price <= 0
      raise ArgumentError.new("Price cannot be less than or equal to 0")
    end
    @isbn = isbn
    @price = price
    
  end
  def price_as_string
    return "$%.2f" % @price
  end
end
