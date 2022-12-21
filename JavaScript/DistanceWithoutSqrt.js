
const magicfunc = (x) => {
  let s = ((x/2) + x / (x / 2)) / 2; 
  for (let i=1; i <= 4; i++) {
      s=(s + x / s) / 2;
  }
  return s;
};
const dist = (x1,y1,x2,y2) => { 
  if(!x2) x2=0; 
  if(!y2) y2=0;
  
  let num = (x2-x1)*(x2-x1)+(y2-y1)*(y2-y1);
  let s = ((num/2) + num / (num / 2)) / 2; 
  for (let i=1; i <= 4; i++) {
    s=(s + num / s) / 2;
  }
  return s
}

function dcos(x) {
  return -Math.sin(x)
}
//  d = x2-x1/(cos(arctan((y2-y1)/x2-x1)))
console.time('dist');
console.log(dist(1,0,3,4)); 
console.timeEnd('dist');


function sdist (x1,y1,x2,y2) {
  var a = x1 - x2;
var b = y1 - y2;

return  Math.sqrt( a*a + b*b );
}


console.time('sdist');
console.log(sdist(1,0,3,4)); 
console.timeEnd('sdist');
/**
 * @description distance x2 - x1 is the same as dcos a, where a is the angle between the two vectors and d is the distance between the two points. The angle can be found by using arctan (y2 - y1) / (x2 - x1). Therefore, you will find out that the x distance is dcos (arctan (y2 - y1 / x2 - x1)) = x2 - x1. Therefore d = x2 - x1 / (cos (arctan ((y2 - y1) / x2 - x1)))
 * @param {Number} x1 
 * @param {Number} y1 
 * @param {Number} x2 
 * @param {Number} y2 
 * @returns {Number} distance tween two points
 */
const distanceCos = (x1,y1,x2,y2) => x2 - x1 / (-Math.sin(Math.atan((y2 - y1) / x2 - x1)))

console.time('distCos');
console.log(distanceCos(1,0,3,4)); 
console.timeEnd('distCos');