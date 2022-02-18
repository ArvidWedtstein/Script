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
	var year int = 2022
	var p *int = &year
	if year == 2021 {
		return "", errors.New("false year")
	}

	fmt.Println(p)
	fmt.Println(yesarray[0])
}
