#include <stdio.h>
#include <stdlib.h>

int main(void){
    FILE * fp;
    int c;
    printf("Hello World!\n");

    fp = fopen ("file.txt", "r");
    while(1) {
      c = fgetc(fp);
      if( feof(fp) ) {
         break ;
      }
      printf("%c", c);
   }
   fclose(fp);
   printf("\nDone!\n");

    return 0;
}