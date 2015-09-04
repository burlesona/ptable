# In this pass I'm adding refining the prime seive to
# add a cache of the first 1000 primes
require_relative 'cache'

module PTable
  module_function
  def print(limit=nil, cache: true)
    limit = limit ? limit.to_i : 30
    primes = primes_through(limit, cache: cache)
    pad = (primes.last * primes.last).to_s.length
    sep = "-" * ((primes.length+1)*(pad+3)-3)

    table = [[0]+primes]
    primes.each do |p|
      table << [p] + primes.map{|n| p * n }
    end

    puts sep
    table.each do |row|
      puts row.map{|n| sprintf("%#{pad}d",n) }.join(" | "), sep
    end
  end

  def primes_through(limit, cache: true)
    if cache && limit <= 7919
      FIRST_THOUSAND_PRIMES.take_while{|i| i <= limit}
    else
      uncached_primes_through(limit)
    end
  end

  def uncached_primes_through(limit)
    seive = (2..limit).to_a
    (2..Math.sqrt(limit).ceil).each do |n|
      (n*2).step(limit,n).each{|i| seive.delete(i)}
    end
    seive
  end
end
