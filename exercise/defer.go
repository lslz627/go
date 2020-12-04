package main

func test(a int) {
	println(a)
}

func test2() {
	defer test(1000)

	a := 200
	defer test(a)

	println(a)
}

func main() {
	test2()
	println(2)
}
