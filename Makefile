all:	sender	recv

sender:	sender.o
	g++ -o sender sender.o

recv:	recv.o
	g++ -o recv recv.o

sender.o:	sender.cpp
	g++ -c  -std=c++11 sender.cpp

recv.o:	recv.cpp
	g++ -c -std=c++11 recv.cpp

clean:
	rm -rf *.o sender recv
