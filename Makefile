COMPILER=g++
OPTIONS=-std=c++17 -pedantic -Wall -Werror -g
COMPILE=$(COMPILER) $(OPTIONS)

card=../Card.cpp
pack=../Pack.cpp
test_framework=catch_amalgamated.cpp

test: test_card test_pack

test_valgrind: test_card.exe test_pack.exe
	valgrind ./test_card.exe
	valgrind ./test_pack.exe

test_card: test_card.exe
	./test_card.exe

test_pack: test_pack.exe
	./test_pack.exe

test_card.exe: test_card.cpp $(card) $(test_framework)
	$(COMPILE) -o $@ $^

test_pack.exe: test_pack.cpp $(card) $(pack) $(test_framework)
	$(COMPILE) -o $@ $^

.PHONY: clean

clean:
	rm -rvf *.out *.exe *.dSYM *.stackdump