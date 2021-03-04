#include <stdio.h>

int random(int m, int a, int c, int x){
  return (a * x + c) % m;
}

int main(int argc, char *argv[]){
  if(argc == 5){
    printf("%d", random(*argv[1], *argv[2], *argv[3], *argv[4])); 
  } else {
    printf("Error: Not matching argument count.");
  }
}
