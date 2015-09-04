# Here I'm adding some simple benchmarks to run
# which can be used to test the performance of
# various refactorings.

require 'benchmark'
require 'stringio'
require_relative 'lib/ptable'

# Don't clutter the console with printing
def silent_out
  stdout = $stdout
  $stdout = StringIO.new
  begin
    yield if block_given?
  ensure
    $stdout = stdout
  end
end

# Calculating primes is the most expensive operation, so caching
# the primes saves time.
Benchmark.bm do |bm|
  bm.report '#print 100 primes' do
    silent_out{ PTable.print(541) }
  end
  bm.report '#print 100 primes uncached' do
    silent_out{ PTable.print(541, cache: false) }
  end
  bm.report '#print 1,000 primes' do
    silent_out{ PTable.print(7919) }
  end
  bm.report '#print 1,000 primes uncached' do
    silent_out{ PTable.print(7919, cache: false) }
  end
end
