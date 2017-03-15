package main

import (
	"fmt"
	"time"
)

// for <expression>
// if no expression then it is an infinite loop

func main() {
	for timer := 10; timer>=0; timer--{
		fmt.Println(timer)
		time.Sleep(1*time.Second)
	}
}