all : netfilter_test

netfilter_test: main.o printarr.o
	g++ -g -o netfilter_test main.o printarr.o -lnetfilter_queue

printarr.o:
	g++ -g -c -o printarr.o printarr.c

main.o:
	g++ -g -c -o main.o main.c

clean:
	rm -f netfilter_test
	rm -f *.o

