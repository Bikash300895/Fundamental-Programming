package main

import(
	"fmt"
	"reflect"
)

var (
	name string
	course string
	module float64
)


func main() {
	// Declare and initialize variable with :=
	name := "Bikash"
	fmt.Println("The name is : ", name)
	fmt.Println("The name type is : ", reflect.TypeOf(name))

	// Pointer
	fmt.Println("The address of variable name is : ", &name)

	changeCourse(&name)
	fmt.Println("The name is : ", name)
}

func changeCourse(name *string) string {
	*name = "Roy"
	fmt.Println("Inside function " + *name)
	return *name
}