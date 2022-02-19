package main

import (
	"errors"
	"fmt"
	"log"
)

func main() {

	log.SetPrefix("test:")
	fmt.Println("hello world")

	// ----------------------------
	// Arrays
	// ----------------------------
	yesarray := [3]string{"y", "e", "s"}

	testarray := [5]string{"a", "b", "c"}
	// Length will still be 5. even if only 3 items are in the array.
	fmt.Printf("Length: %v\n", len(testarray))

	// print actual length of array. cap
	fmt.Printf("Actual Length: %v\n", cap(testarray))

	// test array with infinite values
	test := [...]int{0, 1, 2, 3, 4, 5, 6, 7, 8, 9}
	fmt.Println(test)

	// slice array
	btest := test[:]  // slice of all elements
	ctest := test[3:] // slice from 4th element to end
	dtest := test[:6] // slice first 6 elements

	fmt.Println(btest)
	fmt.Println(ctest)
	fmt.Println(dtest)

	// declare empty array
	var tests [3]string
	fmt.Println(tests)

	// array of arrays
	var arrays [3][3]int = [3][3]int{[3]int{1, 0, 0}, [3]int{0, 1, 0}, [3]int{0, 0, 1}}
	fmt.Println(arrays)

	a := [...]int{1, 2, 3}
	b := &a // B is going to point to the same data as A

	//	b := a   here b is a copy of a
	b[1] = 5
	fmt.Println(a)
	fmt.Println(b)

	/*
	* Maps
	 */

	// YeSmap := map[string]string;

	// YeSmap["test"] = "👾"

	// loops
	for x := 0; x < 10; x++ {
		if x == 5 {
			fmt.Println("😂")
		} else {
			fmt.Println("🙂")
		}
	}

	// pointers
	var year int = 2021
	var p *int = &year
	if year == 2021 {
		errors.New("false year")
	}

	fmt.Println(p)
	fmt.Println(yesarray[0])

	// first letter uppercase indicates export of constant
	const Test string = "test"
	fmt.Println(Test)
}
