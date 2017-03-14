package main

import "fmt"

func main() {
	bestFinish := best(13, 10, 14, 17, 14, 16)
	fmt.Println(bestFinish)
}

func best(finishes ...int) int {
	best := finishes[0]
	for _,i := range finishes{
		if i>best {
			best = i
		}
	}

	return best
}
