package main

import "fmt"

func main() {
	leagueTitles := make(map[string]int)
	leagueTitles["sunderland"] = 6
	leagueTitles["newcastel"] = 4

	recent := map[string]int{
		"Sunderland" : 5,
		"Newcastle" : 0,
	}

	fmt.Println(leagueTitles)
	fmt.Println(recent)

	for key, value := range leagueTitles{
		fmt.Println("\nKey is : %v, Value is %v", key, value)
	}
}
