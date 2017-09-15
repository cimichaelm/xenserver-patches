#
#
#


all:
	diff -c qemu-dm-wrapper-v7.0.master qemu-dm-wrapper > qemu-dm-wrapper.patch; [ $$? -eq 1 ]


install:
	sh patch-xenserver-7.sh

clean:
	$(RM) *~ *-
