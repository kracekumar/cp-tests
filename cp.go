package main

import (
	"fmt"
	"github.com/opesun/copyrecur"
	"log"
	"os"
)

func cp(source, dest string) {
	err := copyrecur.CopyDir(source, dest)
	if err != nil {
		log.Fatal(err)
	} else {
		log.Print("Files copied.")
	}
}

func main() {
	if len(os.Args) != 3 {
		fmt.Println("Syntax: go run cp.go source destination")
		os.Exit(1)
	}
	cp(os.Args[1], os.Args[2])
	fmt.Println("cp.go completed")
}
