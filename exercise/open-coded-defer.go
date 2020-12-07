package main

import "fmt"

/**
	go 1.12 deferproc
	go 1.13 deferprocStack
	go 1.14 open coded defer

在不同的 go 版本下面、编译的结果是不同的

open coded defer 是怎么实现的: https://xargin.com/open-coded-defer-in-go-1-14/
【Golang】脱胎换骨的defer: https://mp.weixin.qq.com/s/gaC2gmFhJezH-9-uxpz07w
*/

var i = 100

func main() {
	if i == 0 {
		defer fmt.Println("1")
	}

	if i == 1 {
		defer fmt.Println("2")
	}

	if i == 2 {
		defer fmt.Println("3")
	}

	if i == 3 {
		defer fmt.Println("4")
	}

	if i == 4 {
		defer fmt.Println("5")
	}

	if i == 5 {
		defer fmt.Println("6")
	}

	panic("hello")
}
