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
  # 3 * 1
  # => [6, 3, 3]
  #
  # Task 1:
  # Give me all ints in array except current index int
  # Multiply them together
  # Return result
  #
  res = int_array.map do |int|
    int_array_copy = Array.new(int_array)
    int_array_copy.delete(int)
    int_array_copy.reduce(1, :*)
  end
  #
  # iterate over each int
  #int_array.each_with_index do |int, index|
  #  # res << int_array[index + 1] * int_array[index + 2]
  #  to_multiply = []
  #  0.upto(int_array.length - 1) do |inner_index|
  #    to_multiply << int_array[inner_index] unless inner_index == index
  #  end
  #  res << to_multiply.reduce(1, :*)
  #end
  #res.flatten!

    # int_array.map do |int|
    #  product = int * product unless int_array.index(int) == index
    #  product
  # iterate over each int. 
  #int_array.each_with_index do |_int, index|
  #  # For each int, calculate product of all other ints
  #  prod = int_array.reduce(1) do |product, int|
  #    current_index = int_array.index(int)
  #    if index != current_index
  #      product *=int_array[index]
  #    end
  #    product
  #  end

  ## Add product of all other ints into an array
  #  res << prod
  #end

  # Return array
  res
end
Tests::run(self.method(:get_products_of_all_ints_except_at_index),[1,7,3,4],[84,12,28,21])

Tests::run(self.method(:get_products_of_all_ints_except_at_index),[1,2,3],[6,3,2])
