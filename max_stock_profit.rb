#!/bin/ruby
=begin
Problem:
How much can I make trading stocks? Taken from https://www.interviewcake.com/

First, I wanna know how much money I could have made yesterday if I'd been trading Apple stocks all day.

So I grabbed Apple's stock prices from yesterday and put them in an array called stock_prices, where:

The indices are the time (in minutes) past trade opening time, which was 9:30am local time.
The values are the price (in US dollars) of one share of Apple stock at that time.
So if the stock cost $500 at 10:30am, that means stock_prices[60] = 500.

Write an efficient method that takes stock_prices and returns the best profit I could have made from one purchase and one sale of one share of Apple stock yesterday.

For example:

  stock_prices = [10, 7, 5, 8, 11, 9]

get_max_profit(stock_prices)
# returns 6 (buying for $5 and selling for $11)

No "shorting"—you need to buy before you can sell. Also, you can't buy and sell in the same time step—at least 1 minute has to pass.

Finished? Check out these Gotchas:

You can't just take the difference between the highest price and the lowest price, because the highest price might come before the lowest price. And you have to buy before you can sell.

What if the price goes down all day? In that case, the best profit will be negative.

=end

# Strategies / Algorithms
# - brute force
# - O(n^2)
# - O(n) time and O(1) space -- You can do this in O(n) time and O(1) space! More on big O: https://www.interviewcake.com/article/ruby/big-o-notation-time-and-space-complexity?
# Can you halve the problem and solve half?
def get_max_profit(stock_prices)

end

module Tests
  @count = 1
  # Test scenario
  #
  def self.get_max_profit_test(stock_prices, max_profit)

    if get_max_profit(stock_prices) == max_profit
      puts "#{__method__} #{@count} passed"
    else
      puts "#{__method__} #{@count} failed"
      puts "expected #{get_max_profit(stock_prices)} to == #{max_profit}"
    end

    @count += 1
  end

end

Tests::get_max_profit_test([10,7,5,8,11,9], 6)
Tests::get_max_profit_test([10,7,5,4,2,1], -3)
