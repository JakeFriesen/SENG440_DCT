#include <stdio.h>
#include <stdlib.h>

int main(void){
    FILE * fp;
    int c;
    printf("Hello World!");

    fp = fopen ("file.txt", "w+");
    while(1) {
      c = fgetc(fp);
      if( feof(fp) ) { 
         break ;
      }
      printf("%c", c);
   }
   fclose(fp);
   printf("Done!");

    return 0;
}