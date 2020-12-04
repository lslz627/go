package main

import "reflect"

type User struct {
	username string
	age      int
}

func (user User) GetAge() int {
	return user.age
}

func main() {
	user := User{age: 28}
	println(reflect.TypeOf(user).String())
}
