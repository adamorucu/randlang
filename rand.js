#!/usr/bin/node
function random(m, a, c, x){
  return (a * x + c) % m;
}

var args = process.argv

if(args.length == 6){
  let [i, j, m, a, c, x] = args;
  console.log(random(parseInt(m),parseInt(a),parseInt(c),parseInt(x)));
}
else {
  console.log("Error: Not matching argument count.");
}
