module Intro1 where

-- define named constants
r1 = 10
-- r1 is a constant bound to the value 10

r2 = b^2 + 1/b where b = 2
-- r2 uses a local binding (where) to define b = 2
-- it evaluates the arithmetic expression 2^2 + 1/2

-- define a function
diff a b = abs (a - b)
-- diff is a function that takes two numbers a and b
-- it returns the absolute difference between them (never negative)

r3 = diff (diff a a) a where a = 1
-- r3 is defined using nested function calls
-- the inner diff is evaluated first, then its result is used as input

r4 = diff (diff a b) b where a = 1; b = 1
-- r4 is similar to r3, using local bindings for a and b
-- this is not recursion, just nested function application

-- lists by enumeration
r5 = [1,3,4,1]
-- r5 is a list defined explicitly in this exact order

r6 = [1..5]
-- r6 is a range that expands to the list [1,2,3,4,5]

inc n = n + 1
-- inc is a function that increments its input by 1

r7 = map inc [1..3]
-- map applies the function inc to each element of the list
-- result is [2,3,4]

r8 = map (diff 2) [1..3]
-- diff 2 is a partially applied function
-- map applies it to each element of the list
-- result is [1,0,1]

r9 = map sqrt [1..3]
-- map applies the square root function to each element of the list
-- result is a list of floating-point values

r10 = zip [1..3] (map sqrt [1..3])
-- zip combines two lists into tuples element by element
-- each tuple contains one value from each list

r11 = zip [1..3] (map sqrt [1..2])
-- zip stops when the shorter list runs out
-- result contains only two tuples

r12 = print [1..3]
-- r12 is an IO action that would print [1,2,3] if executed

main :: IO ()
main = pure ()
-- main is the entry point of the program
-- pure () represents a do-nothing IO action
-- running the program produces no output
