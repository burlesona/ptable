# At this stage I'm just interested in wrapping up my code in a namespace and
# method call so that I can easily reference it in tests, and so that I can write
# out the tests that define the expected behavior. With the tests written I can
# refactor the code and know that I've maintained the behavior.

module PTable
  module_function
  def print
    primes = [2,3,5,7,11,13,17,19,23,29]

    table = [[0]+primes]

    primes.each do |p|
      table << [p] + primes.map{|n| p * n }
    end

    pad = table.last.last.to_s.length

    table.each do |row|
      puts row.map{|n| sprintf("%#{pad}d",n) }.join(" | ")
      puts "-" * (11*(pad+3)-3)
    end
  end
end
