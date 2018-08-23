all : netfilter_test

netfilter_test: main.o printarr.o swap_endian.o protocol_check.o
	g++ -g -o netfilter_test main.o printarr.o protocol_check.o swap_endian.o -lnetfilter_queue

swap_endian.o:
	g++ -g -c -o swap_endian.o swap_endian.cpp

protocol_check.o:
	g++ -g -c -o protocol_check.o protocol_check.cpp
printarr.o:
	g++ -g -c -o printarr.o printarr.c

main.o:
	g++ -g -c -o main.o main.c

clean:
	rm -f netfilter_test
	rm -f *.o

