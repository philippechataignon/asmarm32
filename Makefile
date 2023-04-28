CC=arm-linux-gnueabihf-gcc
AS=arm-linux-gnueabihf-as
LD=arm-linux-gnueabihf-ld

CFLAGS=-O2
ASFLAGS=
LDFLAGS=-e main

%: %.c
	$(CC) $(CFLAGS) -c -o $@ $<
%.o: %.s
	$(AS) $(ASFLAGS) -o $@ $<
%: %.o
	$(LD) $(LDFLAGS) -o $@ $<

src=$(wildcard *.s)
obj=$(patsubst %.s,%.o,$(src))
target=$(patsubst %.s,%,$(src)) $(patsubst %.S, %, $(wildcard *.S)) add_main

all:$(target) $(obj) add_main
add_main: add.o add_main.o
	$(CC) $(CFLAGS) -o $@ $^

.PHONY: clean

clean:
	rm -f $(target) *.o
