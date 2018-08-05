#!/bin/ruby
require('./test.rb')

=begin 
   You have an array of integers, and for each index you want to find the product of every integer except the integer at that index.
Write a method get_products_of_all_ints_except_at_index() that takes an array of integers and returns an array of the products.

For example, given:

  [1, 7, 3, 4]

your method would return:

  [84, 12, 28, 21]

by calculating:

  [7 * 3 * 4,  1 * 3 * 4,  1 * 7 * 4,  1 * 7 * 3]

Here's the catch: You can't use division in your solution!
=end

def get_products_of_all_ints_except_at_index(int_array)
  # Make an array with the products.

  # ex
  # [1, 2, 3]
  # should return
  # 2 * 3
  # 1 * 3
  # 2 * 1
  # => [6, 3, 2]
  #
  # Task 1:
  # Give me all ints in array except current index int
  #
  # Tast 2:
  # Multiply them together
  #
  # Task 3:
  # Return result
  #
  # Approach 1:
  res = int_array.map do |int|
    int_array_copy = Array.new(int_array)
    int_array_copy.delete(int)
    int_array_copy.reduce(1, :*)
  end
  #
  # Approach 2:
  # iterate over each int
  #res = []
  #int_array.each_with_index do |int, index|
  #  to_multiply = []
  #  0.upto(int_array.length - 1) do |inner_index|
  #    to_multiply << int_array[inner_index] unless inner_index == index
  #  end
  #  res << to_multiply.reduce(1, :*)
  #end
  #res.flatten!

  # Return array
  res
end
Tests::run(self.method(:get_products_of_all_ints_except_at_index),[1,7,3,4],[84,12,28,21])

Tests::run(self.method(:get_products_of_all_ints_except_at_index),[1,2,3],[6,3,2])
