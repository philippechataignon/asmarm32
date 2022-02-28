CC=arm-linux-gnueabihf-gcc
AS=arm-linux-gnueabihf-as
LD=arm-linux-gnueabihf-ld
CFLAGS=-O2
ASFLAGS=
LDFLAGS=-e main

%.o: %.s
	$(AS) $(ASFLAGS) -o $@ $<
%: %.o
	$(LD) $(LDFLAGS) -o $@ $<

src=$(wildcard *.s)
obj=$(patsubst %.s,%.o,$(src))
target=$(patsubst %.s,%,$(src))

all:$(target) $(obj)

.PHONY: clean

clean:
	rm -f $(obj) $(target)
