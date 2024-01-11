# Testing
Testing is a really important part of software development. Without it, we would not know if our code does what we want it to do or if there is some error. The way we should be testing is creating test files for every single library we create. By doing it this way we can focus on testing one library rather than having all test functions in one file.

Whenever we test, we are comparing the expected value (aka the value we want) to the actual value (the output of our functions). If the expected value is equal to the actual value, then our test passes; otherwise, it failed and we would have to go back to our code and fix the error.

# Testing Files for Project 1
As I mentioned before, I wasn't able to get the Autograder up in time, so I am providing my own test files to you all. I think it was for the best anyway because this would allow you all to see an example of proper unit testing. 

## How to use the test files
First, make sure you are in the same directory as the test files. **DO NOT MOVE ANY OF THE FILES IN THIS FOLDER OUTSIDE OF THE FOLDER. Doing so will screw up the compilation of the tests**. Once you are in the test directory, you can either do to things: 1) type the compilation command everytime, or 2) make your life easier and use the provided Makefile. To use the any of the make commands in the Makefile, it's simply typing `make [command]` onto the Linux terminal. Below are some of the make commands in the file:
- `make test` => Run all of the test files in the directory
- `make test_card` => Run the tests for `Card` only
- `make test_pack` => Run the tests for `Pack` only
- `make clean` => delete the executables created in the directory

Please note that _your code must compile using g++_. If your code compiles with another compiler, like MSVC from Microsoft, but it doesn't compile with g++, then that is an automatic zero. For Windows users, there are resources out there that show you how to get WSL set up on your computer so that you have access to a Linux terminal. If you need help with this set up, then please visit me during tutoring hours.

## Valgrind for memory leaks
You can test for memory leaks using valgrind, which is a programming tool only available on linux that would detect any memory leaks in your executable. If you have valgrind installed on your linux distribution, then it's just a matter of running this command `valgrind ./[name_of_executable]`.

# Grading for Project 1
- +100% For passing all test files. Each test case is worth the same points, so if you don't pass all the test cases, then your total score is `[number of test cases passed] / [total amount of test cases]`
- -5% For having memory leaks
- -15% For having `using namespace std;` anywhere in your project
- -100% For non-compiling code.

**NOTE**: I won't have any additional points for following good coding practices (at least not for Project 1), but I expect you all do so anyways. 
