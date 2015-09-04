# To keep the test file itself more readable, here are samples of correct
# table output to test against.

# To ensure the seive function is working correctly, test against a known
# list of the first 1000 primes. For this exercise I'll assume that if
# the function generates the first 1000 primes correctly that it will
# generate all primes correctly, but if we were using this in production
# and concerned with extremely large primes I would explicitly test
# some larger sets.

# This is sort of an interesting case. Since you really want to test
# the behavior and not the implementation, and in this case only desired
# behavior is to print a table to STDOUT, you really should be checking that
# the final string output is correct, rather than checking the intermediate
# steps.

DEFAULT_OUTPUT = "---------------------------------------------------------------
  0 |   2 |   3 |   5 |   7 |  11 |  13 |  17 |  19 |  23 |  29
---------------------------------------------------------------
  2 |   4 |   6 |  10 |  14 |  22 |  26 |  34 |  38 |  46 |  58
---------------------------------------------------------------
  3 |   6 |   9 |  15 |  21 |  33 |  39 |  51 |  57 |  69 |  87
---------------------------------------------------------------
  5 |  10 |  15 |  25 |  35 |  55 |  65 |  85 |  95 | 115 | 145
---------------------------------------------------------------
  7 |  14 |  21 |  35 |  49 |  77 |  91 | 119 | 133 | 161 | 203
---------------------------------------------------------------
 11 |  22 |  33 |  55 |  77 | 121 | 143 | 187 | 209 | 253 | 319
---------------------------------------------------------------
 13 |  26 |  39 |  65 |  91 | 143 | 169 | 221 | 247 | 299 | 377
---------------------------------------------------------------
 17 |  34 |  51 |  85 | 119 | 187 | 221 | 289 | 323 | 391 | 493
---------------------------------------------------------------
 19 |  38 |  57 |  95 | 133 | 209 | 247 | 323 | 361 | 437 | 551
---------------------------------------------------------------
 23 |  46 |  69 | 115 | 161 | 253 | 299 | 391 | 437 | 529 | 667
---------------------------------------------------------------
 29 |  58 |  87 | 145 | 203 | 319 | 377 | 493 | 551 | 667 | 841
---------------------------------------------------------------\n"

LIM10_OUTPUT = "----------------------
 0 |  2 |  3 |  5 |  7
----------------------
 2 |  4 |  6 | 10 | 14
----------------------
 3 |  6 |  9 | 15 | 21
----------------------
 5 | 10 | 15 | 25 | 35
----------------------
 7 | 14 | 21 | 35 | 49
----------------------\n"
