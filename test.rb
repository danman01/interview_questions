module Tests
  @count = 1
  # Test scenario
  
  def self.run(meth, ints, res)
    if meth.call(ints) == res
      puts "#{__method__} #{@count} #{meth} passed"
    else
      puts "#{__method__} #{@count} #{meth} failed"
      puts "expected #{meth.call(ints)} to == #{res}"
    end

    @count += 1
  end
end

