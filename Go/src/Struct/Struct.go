package main

import "fmt"

func main() {
	type courseMeta struct {
		Author string
		Level string
		Rating float64
	}

	DockerDeepDive := courseMeta{
		Author:"The author",
		Level: "intermediate",
		Rating:5,
	}

	fmt.Println(DockerDeepDive)
}
