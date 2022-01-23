"use strict";

const { compact } = require("lodash");

exports.__esModule = true;
// declare variable
//  name| type   |
var test = 5;
var font;
var person = {
    first: "Jeff",
    last: "test",
    age: 5
};
// for functions that don't return a value use : void
//          |   args       args  | define return type 
var pow = function (x, y) {
    return Math.pow(x, y).toString();
};
console.log(pow(5, 8));
// arrays 
// force array to only accept boolean types
var arr = [];
arr.push('test');
var array = [];
array.push(5);
array.push('test');
// Generics
var Observable = /** @class */ (function () {
    function Observable(value) {
        this.value = value;
    }
    return Observable;
}());
var x;
var p = { first: "Ben", last: "Dover", age: 5 };
var y = new Observable(p);
console.log(y.value);
var z = new Observable(23);
console.log(z);
