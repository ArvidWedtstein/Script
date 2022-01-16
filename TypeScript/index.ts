
import * as _ from 'lodash';


// declare variable
//  name| type   |
let test: number = 5;

// create type

type Style = 'bold' | 'italic';

let font: Style;


// Interface
interface Person {
    first: string, // required properties
    last: string, // required properties
    age: number, // required properties
    [key: string]: any // not required property. 
}

const person: Person = {
    first: "Jeff",
    last: "test",
    age: 5
}
// for functions that don't return a value use : void
//          |   args       args  | define return type 
const pow = (x: number, y: number): string => {
    return Math.pow(x, y).toString();
}

console.log(pow(5, 8));


// arrays 

// force array to only accept boolean types
const arr: string[] = [];
arr.push('test');


// fixed length array | touple
// add "?" to make arguments optional
type MyList = [number?, string?, boolean?]

const array: MyList = []
array.push(5)
array.push('test')


// Generics

class Observable<T> {
    constructor(public value: T) {}
}

let x: Observable<number>;
let p: Person = {first: "Ben", last: "Dover", age: 5};
let y = new Observable<Person>(p);
console.log(y.value)
let z = new Observable(23);
console.log(z)