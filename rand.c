#include <stdio.h>
#include <stdlib.h>

int randomNumber(int m, int a, int c, int x){
  return (a * x + c) % m;
}

int main(int argc, char *argv[]){
  if(argc == 5){
    int rand = randomNumber(atoi(argv[1]), atoi(argv[2]), atoi(argv[3]), atoi(argv[4]));
    printf("%d", rand); 
  } else {
    printf("Error: Not matching argument count.");
  }
}
