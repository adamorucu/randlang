#!/usr/bin/perl

sub random {
  my ($m, $a, $c, $x) = @_;
  return ($a * $x + $c) % $m;
}

if ($#ARGV == 3){
  $res = random($ARGV[0], $ARGV[1], $ARGV[2], $ARGV[3]);
  print $res;
}
