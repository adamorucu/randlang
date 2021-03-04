#!/usr/bin/python3
import sys

def random(m, a, c, x):
    """
    m: Modulus
    a: Multiplier
    c: Increment
    x: seed or previous number
    """
    return (a * x + c) % m

if len(sys.argv) != 5:
    raise Exception("Not matching argument count.")
args = []
for i in range(1,len(sys.argv)):
    try:
        args.append(int(sys.argv[i]))
    except:
        raise ValueError

m, a, c, x = args
print(random(m, a, c, x))
