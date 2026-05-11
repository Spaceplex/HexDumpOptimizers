#include <ctype.h>
#include <stdio.h>

int main()
{
  char* file = "binary.out";
  FILE *fp = fopen(file, "rb");
  unsigned char buffer[16];
  size_t read;
  unsigned int offset = 0;
  while((read = fread(buffer, 1, sizeof(buffer), fp)) > 0) {
    printf("|ADDRESS| ");
    printf("%08x ", offset);
    printf("|HEX| ");

    for (size_t i = 0; i < 16; i++) {
      if (i < read)
        printf("%02x ", buffer[i]);
      else
        printf("   "); // Space padding for short lines
    }
    // 3. Print ASCII representation (canonical format)
    printf(" |ASCII| ");
    for (size_t i = 0; i < read; i++) {
      // Check if character is printable
      printf("%c", isprint(buffer[i]) ? buffer[i] : '.');
    }
    printf(" \n");

    offset += read;

  }
  fclose(fp);
  return 0;
}
