require 'minitest/autorun'
require 'minitest/reporters'
Minitest::Reporters.use!

require_relative '../lib/ptable'
require_relative 'test_data'


describe PTable do
  it "should have a method #print" do
    assert PTable.respond_to?(:print)
  end

  describe "prime seive" do
    it "should return primes to a limit" do
      res = PTable.primes_through(10)
      correct = [2,3,5,7]
      assert_equal correct, res
    end

    it "should return the first 1000 primes" do
      assert_equal PTable::FIRST_THOUSAND_PRIMES, PTable.primes_through(7919)
    end

    it "should return the first 1000 primes without using the cache" do
      assert_equal PTable::FIRST_THOUSAND_PRIMES, PTable.primes_through(7919, cache: false)
    end
  end

  describe "#print with no arguments" do
    it "should return a multiplication table of the first 10 primes as a nested array" do
      res = PTable.print
      assert_equal 0, res.first.first
      assert_equal 29, res.first.last
      assert_equal 29, res.last.first
      assert_equal 841, res.last.last
    end

    it "should print a multiplication table of the first 10 primes" do
      out, err = capture_io do
        PTable.print
      end
      assert_equal DEFAULT_OUTPUT, out
    end
  end

  describe "#print with arguments" do
    it "should return a multiplication table of the first 10 primes as a nested array" do
      res = PTable.print(10)
      assert_equal 0, res.first.first
      assert_equal 7, res.first.last
      assert_equal 7, res.last.first
      assert_equal 49, res.last.last
    end

    it "should print a multiplication table of the first 10 primes" do
      out, err = capture_io do
        PTable.print(10)
      end
      assert_equal LIM10_OUTPUT, out
    end
  end
end
