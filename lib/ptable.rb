# In this pass I'm adding a simple prime seive to generate
# primes and adding an argument to generate the table based
# on the given upper limit.

module PTable
  module_function
  def print(limit=nil)
    limit = limit ? limit.to_i : 30
    primes = primes_through(limit)
    table = [[0]+primes]

    primes.each do |p|
      table << [p] + primes.map{|n| p * n }
    end

    pad = table.last.last.to_s.length

    sep = "-" * ((primes.length+1)*(pad+3)-3)
    puts sep
    table.each do |row|
      puts row.map{|n| sprintf("%#{pad}d",n) }.join(" | "), sep
    end
  end

  def primes_through(limit)
    seive = (2..limit).to_a
    (2..Math.sqrt(limit).ceil).each do |n|
      (n*2).step(limit,n).each{|i| seive.delete(i)}
    end
    seive
  end
end
