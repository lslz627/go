package slice

import "testing"

func TestIndexOf(t *testing.T) {
	slice := []int{1, 2, 3, 4, 5}
	index := IndexOf(slice, func(v interface{}) bool {
		i := v.(int)
		if i == 3 {
			return true
		}

		return false
	})

	println(index)
}

func TestIndexOf2(t *testing.T) {
	slice := []int{1, 2, 3, 4, 5}
	index := IndexOf(slice, func(v interface{}) bool {
		i := v.(int)
		if i == 4 {
			return true
		}

		return false
	})

	println(index)
}
