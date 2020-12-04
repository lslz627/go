package main

import "reflect"

func main() {
	i := 0
	t := reflect.TypeOf(i)
	println(t)
}
