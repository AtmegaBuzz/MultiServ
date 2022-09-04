CC = gcc
SRC = src

all: multiserv

multiserv: ${SRC}/queue.o ${SRC}/server.o
	${CC} ${SRC}/queue.o ${SRC}/server.o  -o server

queue.o: ${SRC}/queue.c
		${CC} queue.c 

server.o: ${SRC}/server.c
		${CC} server.c 

clean:
		rm ${SRC}/queue.o
		rm ${SRC}/server.o 
		rm server
