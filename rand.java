public class rand {
  public static int random(int m, int a, int c, int x){
    return (a * x + c) % m;
  }

  public static void main(String[] args) {
    if (args.length == 4)
      System.out.print(random(Integer.parseInt(args[0]), Integer.parseInt(args[1]), Integer.parseInt(args[2]), Integer.parseInt(args[3])));
    else
      System.out.println("Error: Not matching argument count.");
  }
}
