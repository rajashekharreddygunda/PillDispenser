TARGET = build/main
SRC = main.c

all:
	sdcc -mmcs51 $(SRC) -o $(TARGET).ihx
	packihx $(TARGET).ihx > $(TARGET).hex

clean:
	del build\*.*
