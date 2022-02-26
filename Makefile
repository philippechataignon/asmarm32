target=sum01 sum02 cmp01 cmp02 hello01

all:$(target)

clean:
	-rm -f $(target)
