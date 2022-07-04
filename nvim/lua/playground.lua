local example_func = function(a, b)
	print("A is: ", a)
	print("B is: ", b)
end

local func_with_ops = function(ops)
	local will_do_foo = ops.foo
	local filename = ops.filename
	print("will do foo: ", will_do_foo)
	print("filename: ", filename)
end

example_func(1, 2)
func_with_ops({foo = true, filename = "hello, world"})
print("hello, world")
