# In this initial file I quickly jotted down the simplest implementation
# I could think of and ran it a few times in the terminal to play with it.
# For a relatively simple problem like the one in the code assignment, this
# is normally where I would start: just jump in and play with a simple ruby
# file or mess around in IRB to think through what the program is going to look
# and feel like.

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
