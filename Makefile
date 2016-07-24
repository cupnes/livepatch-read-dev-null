obj-m = livepatch-read-dev-null.o

all:
	make -C $(KERNEL_SRC) M=$(PWD)

clean:
	make -C $(KERNEL_SRC) M=$(PWD) clean
