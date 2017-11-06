all : netfilter

netfilter: clean nfqnl_test.o
	g++ -o multi_block nfqnl_test.o -lnetfilter_queue

nfqnl_test.o:
	g++ -c -o nfqnl_test.o nfqnl_test.cpp

clean:
	rm -f multi_block
	rm -f *.o

