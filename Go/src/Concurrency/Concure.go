package main

import (
	"time"
	"fmt"
	"sync"
)

func main() {
	var waitGroup sync.WaitGroup
	waitGroup.Add(2)

	go func(){
		defer waitGroup.Done()

		time.Sleep(5 * time.Second)
		fmt.Println("Hello")
	}()

	go func(){
		defer waitGroup.Done()

		fmt.Println("Bikash")
	}()

	waitGroup.Wait()
}
