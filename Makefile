CC=arm-linux-gnueabihf-gcc
AS=arm-linux-gnueabihf-as
LD=arm-linux-gnueabihf-ld
CFLAGS=-O2
ASFLAGS=
LDFLAGS=-e main

%: %.S
	$(CC) $(CFLAGS) -o $@ $<
%.o: %.s
	$(AS) $(ASFLAGS) -o $@ $<
%: %.o
	$(LD) $(LDFLAGS) -o $@ $<

src=$(wildcard *.s)
obj=$(patsubst %.s,%.o,$(src))
target=$(patsubst %.s,%,$(src)) hello01

all:$(target) $(obj)

.PHONY: clean

clean:
	rm -f $(obj) $(target)
