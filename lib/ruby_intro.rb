# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  result = 0
  arr.each do |x|
    result += x
  end
  result
end

def max_2_sum arr
  result = 0
  arr.sort! { |a,b| b <=> a }
  if arr.empty? 
    result = 0
  elsif arr.length == 1
    result = arr[0]
  else
    result = arr[0] + arr[1]
  end
end

def sum_to_n? arr, n
  pointer = 1
  if arr.empty? || arr.length == 1
    return false
  else
    arr.each do |x|
      (pointer...arr.length).each do |idx|
        if x + arr[idx] == n
          return true
        end
      end
      pointer += 1
    end
  end
  false
end

# Part 2

def hello(name)
  return "Hello, #{name}"
end

def starts_with_consonant? s
  not_consonant = ["a","e","i","o","u"]
  if s.empty? || !s.start_with?(/[a-zA-Z]/)
    return false
  else
    return !not_consonant.include?(s[0].downcase)
  end
end

def binary_multiple_of_4? s
  return false unless s.match?(/\A[01]+\z/)
  binary_number = s.to_i(2)
  binary_number % 4 == 0
end

# Part 3

class BookInStock
  attr_accessor :isbn, :price

  def initialize(isbn, price)
    if isbn.empty?
      raise ArgumentError, "ISBN number cannot be empty."
    end

    if price <= 0
      raise ArgumentError, "Price must be greater than zero."
    end

    @isbn = isbn
    @price = price
  end

  def price_as_string
    format("$%.2f", price)
  end
end
