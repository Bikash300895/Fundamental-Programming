package main

import "fmt"

// Slice is reference in an array

func main() {
	// Creating an empty array
	myCourses := make([]string, 5, 10)

	fmt.Println("Length of Slice is : ",len(myCourses))
}