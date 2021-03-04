#!/usr/local/scala/scala-2.13.4/bin/scala
exec scala "$0" "$@"
!#
object rand{
  def random(m: Int, a: Int, c: Int, x: Int): Int = {
    return (a * x + c) % m;
  }

  def main(args: Array[String]): Unit = {
    if (args.length != 5) {
      println(random(args(0).toInt, args(1).toInt, args(2).toInt, args(3).toInt));
    }
    else{
      println("Error: Not matching argument count.");
    }
  }
}
