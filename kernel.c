void main() {
    char *video_memory = (char *)0xb8000;
    const char *msg = "Kernel Loaded!";
    int i = 0;

    while (msg[i] != 0) {
        video_memory[i * 2] = msg[i];
        video_memory[i * 2 + 1] = 0x07; // Light grey on black
        i++;
    }

    while (1) {}  // Infinite loop to keep the kernel running
}

void _start() {
    main();
    while (1) {}  // Infinite loop
}
