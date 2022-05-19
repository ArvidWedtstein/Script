package main

import (
	"fmt"
	"math"
	"runtime"
	"time"
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
	//
	// A slice is formed by specifying two indices, a low and high bound, separated by a colon:
	// a[low : high]
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
	/*
		Map literals are like struct literals, but the keys are required.
	*/

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

	// While loop / For Continued loop
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
	/*
		Go has pointers. A pointer holds the memory address of a value.
	*/

	var ptest *int

	itest := 42
	ptest = &itest

	fmt.Println(*ptest) // read i through the pointer p
	*ptest = 21         // set i through the pointer p

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
	/*
		%v - It takes pretty much any variable type and formats it in the default style for that type.
		%s - Simply a string. This verb doesn’t interpret the string that’s passed in and so it shows up as is.
		%q - This verb formats values (i.e., arguments) with quotes
		%d - formats a regular old base-10 integer number.
		%t - formats a boolean value
		%b - formats binary
		%c - formats character
		%e - formats float
		%p - formats pointer value
		%T - print out the type
		%02d - Print out date format with 0 in front (2020-04-16)
	*/

	// ----------------------------
	// Structs
	// ----------------------------
	/*
		A struct is a collection of fields.
		Struct fields are accessed using a dot.
		Struct fields can be accessed through a struct pointer.
	*/

	type Vertex2 struct {
		X int
		Y int
	}

	// ----------------------------
	// Switch
	// ----------------------------

	fmt.Print("Go runs on ")
	switch os := runtime.GOOS; os {
	case "darwin":
		fmt.Println("OS X.")
	case "linux":
		fmt.Println("Linux.")
	default:
		// freebsd, openbsd,
		// plan9, windows...
		fmt.Printf("%s.\n", os)
	}

	// Switch type / switch with no condition
	t := time.Now()
	switch {
	case t.Hour() < 12:
		fmt.Println("Good morning!")
	case t.Hour() < 17:
		fmt.Println("Good afternoon.")
	default:
		fmt.Println("Good evening.")
	}

	// ----------------------------
	// Methods
	// ----------------------------
	/*
		Go does not have classes. However, you can define methods on types.
		A method is a function with a special receiver argument.
		The receiver appears in its own argument list between the func keyword and the method name.
		In this example, the Abs method has a receiver of type Vertex named v.
	*/

	v := Vertex{3, 4}
	fmt.Println(v.Abs())

	// ----------------------------
	// Defer
	// ----------------------------
	/*
		A defer statement defers the execution of a function until the surrounding function returns.
		Will basicly print hello before world
	*/
	defer fmt.Println("world")

	fmt.Println("hello")

	// ----------------------------
	// Interfaces
	// ----------------------------
	/*
		An interface type is defined as a set of method signatures.
		A value of interface type can hold any value that implements those methods.
	*/

	// ----------------------------
	// Goroutines
	// ----------------------------
	/*
		A goroutine is a lightweight thread managed by the Go runtime.
		Goroutines run in the same address space, so access to shared memory must be synchronized. The sync package provides useful primitives, although you won't need them much in Go as there are other primitives
	*/

	say := func(s string) {
		for i := 0; i < 5; i++ {
			time.Sleep(100 * time.Millisecond)
			fmt.Println(s)
		}
	}
	go say("world")
	say("hello")

	/*
		hello
		world
		hello
		world
		world
		hello
		hello
		world
		world
		hello
	*/

	// ----------------------------
	// Channels
	// ----------------------------
	/*
		Channels are a typed conduit through which you can send and receive values with the channel operator, <-.
		(The data flows in the direction of the arrow.)
		Like maps and slices, channels must be created before use:
		ch := make(chan int)
		By default, sends and receives block until the other side is ready. This allows goroutines to synchronize without explicit locks or condition variables.
	*/

}

// Methods
type Vertex struct {
	X, Y float64
}

// Method		name - return type
func (v Vertex) Abs() float64 {
	return math.Sqrt(v.X*v.X + v.Y*v.Y)
}
