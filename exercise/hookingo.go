package main

import (
	"github.com/fengyoulin/hookingo"
	"reflect"
	"strconv"
	"strings"
	"unsafe"
)

/*
这个库的原理，类似于这个库
https://github.com/bouk/monkey
*/

var hno hookingo.Hook

//go:linkname newobject runtime.newobject
func newobject(typ unsafe.Pointer) unsafe.Pointer

// reflect.Type
// 自己实现的fake newobject，切记这里不要new，否则陷入无休止递归然后崩掉
func fno(typ unsafe.Pointer) unsafe.Pointer {
	t := reflect.TypeOf(0)

	/**
	这里使用 1 的原因是，t 是一个 reflect.Type 类型、底层是一个 nonEmptyInterface 类型、占用 16 个字节
	前 8 个字节，是一个如下的指针
	itab *struct {
		ityp *rtype // static interface type
		typ  *rtype // dynamic concrete type
		hash uint32 // copy of typ.hash
		_    [4]byte
		fun  [100000]unsafe.Pointer // method table
	}

	8 ~ 16 字节存储的才是，指向类型数据的指针、所有这里用了 1
	*/
	(*(*[2]unsafe.Pointer)(unsafe.Pointer(&t)))[1] = typ // 相当于反射了闭包类型
	println(t.String())
	if fn, ok := hno.Origin().(func(typ unsafe.Pointer) unsafe.Pointer); ok {
		return fn(typ) // 调用原始runtime.newobject
	}
	return nil
}

// 创建一个闭包，make closure
func mc(start int, name string) func() string {
	return func() string {
		r := strings.Join([]string{name, strconv.FormatInt(int64(start), 10)}, ":")
		start++
		return r
	}
}

func main() {
	var err error
	hno, err = hookingo.Apply(newobject, fno) // 应用钩子，替换函数
	if err != nil {
		panic(err)
	}
	f := mc(10, "counter")
	println(f())
}
