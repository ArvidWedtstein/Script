package main

import (
	"fmt"
	"math"
)

func main() {
	// ----------------------------
	// Variables
	// ----------------------------

	// Variables can be specified like this
	//   name  -  type  - content
	var variable string = "test"

	// or let Go figure out the type
	// name  -  content
	variable2 := "test"

	fmt.Println(variable)
	fmt.Println(variable2)

	// First letter uppercase indicates export of constant
	const Test string = "test"
	fmt.Println(Test)

	// ----------------------------
	// Arrays
	// ----------------------------

	// specify specific length of array
	// array can be specified with more elements than it actually contains
	abcarray := [5]string{"a", "b", "c"}

	fmt.Printf("Length: %v\n", len(abcarray))        // will show 5 even if the actual length is 3 with "len()"
	fmt.Printf("Actual Length: %v\n", cap(abcarray)) // will show the true length of the array with "cap()"

	// "..." will indicate that the array can have infinite elements
	infinitearray := [...]int{0, 1, 2, 3, 4, 5, 6, 7, 8, 9}

	// slice array
	atest := infinitearray[:]   // slice of all elements
	btest := infinitearray[3:]  // slice from 4th element to end
	ctest := infinitearray[:6]  // slice first 6 elements
	dtest := infinitearray[3:6] // slice from 4th to 6th element

	fmt.Println(atest) // [0 1 2 3 4 5 6 7 8 9]
	fmt.Println(btest) // [3 4 5 6 7 8 9]
	fmt.Println(ctest) // [0 1 2 3 4 5]
	fmt.Println(dtest) // [3 4 5]

	infinitearrayb := infinitearray  // copy array. Will get performance heavy if the array is large
	infinitearrayc := &infinitearray // this will link the arrays together. "infinitearrayc" is going to point to the same data as "infinitearray"

	fmt.Println(infinitearrayb)
	fmt.Println(infinitearrayc)

	// declare array of multiple arrays
	var arrays [3][3]int = [3][3]int{[3]int{1, 0, 0}, [3]int{0, 1, 0}, [3]int{0, 0, 1}}
	fmt.Println(arrays)
	arrays[1][1] = 2 // set a specific value of the array to a new value
	fmt.Println(arrays)

	// ----------------------------
	// Maps
	// ----------------------------

	// create a map:	 key -  value
	mapTest := make(map[string]string)

	mapTest["test"] = "👾"
	mapTest["tesst"] = "🦧"

	// delete a key from a map
	delete(mapTest, "tesst")

	// ----------------------------
	// Loops
	// ----------------------------

	// Three-component loop
	for x := 0; x < 10; x++ {

	}

	// While loop
	n := 1
	for n < 5 {
		n *= 2
	}

	// Infinite loop
	for {

	}

	// For-each range loop
	strings := []string{"hello", "world"}
	for i, s := range strings {
		fmt.Println(i, s)
	}

	// Exit a loop
	sum := 0
	for i := 1; i < 5; i++ {
		if i%2 != 0 { // skip odd numbers
			continue
		}
		sum += i
	}
	fmt.Println(sum) // 6 (2+4)

	// ----------------------------
	// Pointers
	// ----------------------------

	var year int = 2021
	var p *int = &year
	fmt.Println(p)

	// ----------------------------
	// String Formatting
	// ----------------------------

	// you can add variables to a string by using verbs in Sprintf
	fmt.Sprintf("test %v", p)

	// Verbs
	// ------
	// %v - It takes pretty much any variable type and formats it in the default style for that type.
	// %s - Simply a string. This verb doesn’t interpret the string that’s passed in and so it shows up as is.
	// %q - This verb formats values (i.e., arguments) with quotes
	// %d - formats a regular old base-10 integer number.
	// %t - formats a boolean value
	// %b - formats binary
	// %c - formats character
	// %e - formats float
	// %p - formats pointer value

	// ----------------------------
	// Methods
	// ----------------------------
	// Go does not have classes. However, you can define methods on types.
	// A method is a function with a special receiver argument.
	// The receiver appears in its own argument list between the func keyword and the method name.
	// In this example, the Abs method has a receiver of type Vertex named v.

	v := Vertex{3, 4}
	fmt.Println(v.Abs())

}

type Vertex struct {
	X, Y float64
}

func (v Vertex) Abs() float64 {
	return math.Sqrt(v.X*v.X + v.Y*v.Y)
}
