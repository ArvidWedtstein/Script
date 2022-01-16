
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

const pow = (x: number, y: number) => {
    return Math.pow(x, y);
}