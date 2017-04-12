
ARMGNU ?= arm-none-eabi

COPS = -Wall -nostdlib -nostartfiles -ffreestanding 

all : main.hex main.bin main.elf

clean :
	rm -f *.o
	rm -f *.bin
	rm -f *.hex
	rm -f *.elf

crt0.o : crt0.S
	$(ARMGNU)-gcc -c crt0.S
	
main.o : main.c
	$(ARMGNU)-gcc $(COPS) -c main.c -o main.o

main.elf : lpc2148.ld crt0.o main.o 
	$(ARMGNU)-ld crt0.o main.o -T lpc2148.ld -o main.elf

main.bin : main.elf
	$(ARMGNU)-objcopy main.elf -O binary main.bin

main.hex : main.elf
	$(ARMGNU)-objcopy main.elf -O ihex main.hex

