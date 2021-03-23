#include <iostream>
#include <string>

int random(int m, int a, int c, int x){
  return (a * x + c) % m;
}

int main(int argc, char *argv[]){
  if(argc == 5){
    int rand = random(atoi(argv[1]), atoi(argv[2]), atoi(argv[3]), atoi(argv[4]));
    std::cout << rand << std::endl;
    return 0;
  } else {
    std::cout << "Error: Not matching argument count.";
    return -1;
  }
}
