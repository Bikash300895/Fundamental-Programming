package main

import(
	"fmt"
	"reflect"
)

/*
var (
	name string
	course string
	module float64
)
*/

func main() {
	name := "Bikash"
	fmt.Println("The name is : ", name)
	fmt.Println("The name type is : ", reflect.TypeOf(name))
}