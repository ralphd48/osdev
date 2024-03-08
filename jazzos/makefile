asm=nasm

src_dir=src
build_dir=build

$(build_dir)/main.img: $(build_dir)/main.bin
	cp $(build_dir)/main.bin $(build_dir)/main.img
	truncate -s 1440k $(build_dir)/main.img
#
# Flooppy Image
#
floppy_image: $(build_dir)/main.img
$(build_dir)/main.img: bootloader kernel
	dd if=/dev/zero of=$(build_dir)/main.img bs=512
	count=2880
	mkfs.fat -F 12 -n "JAZZOS" $(build_dir)main.img
	dd if=$(build_dir)/bootloader.bin of=$(build_dir)/
	main.img conv=notrunc
#
# bootloader
#
kernel: $(BUILD_DIR)/bootloader.bin
$(build_dir)/bootloader.bin: 
	$(asm) $(src_dir)/bootloader/boot.asm -f bin -o $(build_dir)/bootloader.bin
#
# Kernel
#
kernel: $(BUILD_DIR)/kernel.bin
$(build_dir)/kernel.bin: 
	$(asm) $(src_dir)/kernel/main.asm -f bin -o $(build_dir)/kernel.bin
