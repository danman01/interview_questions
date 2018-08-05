## Strategies and Terms

- *memoization* Memoization ensures that a method doesn't run for the same inputs more than once by keeping a record of the results for the given inputs (usually in a hash)

- *dynamic programming problems* Problems where the solution is composed of solutions to the same problem with smaller inputs (as with the Fibonacci problem,

- Some compilers and interpreters will do what's called *tail call optimization* (TCO), where it can optimize some recursive methods to avoid building up a tall call stack

- subproblems - problems that are solved inside of another problem (often using recursion, like fibonacci)

- overlapping subproblems - solving the same subproblem multiple times

- O(1) space - simply putting one thing in the call stack
- O(n) space - n things in the call stack...vulnerable to stack overflow (recursively solving a problem)
- O(1) time - takes 1 iteration to solve
- O(n) time - takes n interations to solve
