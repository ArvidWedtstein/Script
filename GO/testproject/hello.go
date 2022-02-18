package main

import (
	"errors"
	"fmt"
	"log"
)

func main() {

	log.SetPrefix("test:")
	fmt.Println("hello world")

	// arrays
	yesarray := [3]string{"y", "e", "s"}

	// maps
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

	// switch statement
	select {
	case <-a:
		// when communication happens on channel a
	case <-b:
		// when communication happens on channel b
	case <-c:
		// when communication happens on channel c
	default:
		// when none of the other channels are ready for communication
	}
}
