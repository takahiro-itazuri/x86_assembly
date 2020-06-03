fizzbuzz :
	gcc -e main -o fizzbuzz.o fizzbuzz.s
	./fizzbuzz.o

clean :
	rm -f *.o
