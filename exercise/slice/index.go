package slice

import (
	"reflect"
)

func IndexOf(slice interface{}, f func(interface{}) bool) int {
	v := reflect.ValueOf(slice)
	if reflect.Slice == v.Kind() {
		for i := 0; i < v.Len(); i++ {
			if f(v.Index(i).Interface()) {
				return i
			}
		}
	}

	return -1
}
