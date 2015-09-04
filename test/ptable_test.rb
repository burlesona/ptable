require 'minitest/autorun'
require 'minitest/reporters'
Minitest::Reporters.use!

require_relative '../lib/ptable'
require_relative 'test_data'


describe PTable do
  it "should have a method #print" do
    assert PTable.respond_to?(:print)
  end

  describe "with no arguments" do
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
end
