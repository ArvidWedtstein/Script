const dist = (x1, y1, x2, y2) => {
  let num = (x2 - x1) * (x2 - x1) + (y2 - y1) * (y2 - y1);
  let s = (num / 2 + num / (num / 2)) / 2;
  for (let i = 1; i <= 10; i++) {
    s = (s + num / s) / 2;
    console.log(s);
  }
  return s;
};
console.log("\nCustom");
console.time("dist");
console.log(dist(1, 0, 3, 4));
console.timeEnd("dist");

/**
 * @description distance x2 - x1 is the same as dcos a, where a is the angle between the two vectors and d is the distance between the two points. The angle can be found by using arctan (y2 - y1) / (x2 - x1). Therefore, you will find out that the x distance is dcos (arctan (y2 - y1 / x2 - x1)) = x2 - x1. Therefore d = x2 - x1 / (cos (arctan ((y2 - y1) / x2 - x1)))
 * @param {Number} x1
 * @param {Number} y1
 * @param {Number} x2
 * @param {Number} y2
 * @returns {Number} distance tween two points
 */
const distanceArctan = (x1, y1, x2, y2) =>
  (y2 - y1) / Math.sin(Math.atan((y2 - y1) / (x2 - x1)));

const sdist = (x1, y1, x2, y2) =>
  Math.sqrt((x2 - x1) * (x2 - x1) + (y2 - y1) * (y2 - y1));

console.log("\nArctan");
console.time("distArctan");
console.log(distanceArctan(1, 0, 3, 4));
console.timeEnd("distArctan");

console.log("\nSQUARE ROOT");
console.time("sdist");
console.log(sdist(1, 0, 3, 4));
console.timeEnd("sdist");
