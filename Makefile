# target=sum01 sum02 cmp01 cmp02 hello01
target = $(patsubst %.s,%,$(wildcard *.s))

all:$(target)

clean:
	-rm -f $(target)
