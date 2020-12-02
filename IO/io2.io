fib := method(a, 
	prev := 1
	curr := 1
	if(a == 1 or a == 2, return 1,
		for(i, 3, a, 
				temp := curr
				curr := prev + curr
				prev := temp
			)
		)
	return curr
	)
"Fourth Fibonacci Number is" print
fib(4) println

div := Number getSlot("/")
Number / := method(determinator,
	if(determinator == 0, return 0, return self div(determinator)))

"10 / 5 is " print 
(10 / 5) println
"5 / 0 is " print 
(5 / 0) println

add2D := method(matrix, 
	sum := 0
	matrix foreach(a,
		if((a type) == "Number", sum = a + sum,
			a foreach(i, sum = i + sum)
		)
	)
)
"add2D(list(list(1, 2), 3)): " print
add2D(list(list(1, 2), 3)) println

avg := method(a, 
	if((a size) == 0, 0,
		sum := 0
		a foreach(i, sum = i + sum)
		(sum * 1.0) / (a size) * 1.0
	)
)

"avg(list(1, 2, 3)): " print
avg(list(1, 2, 3)) println
"avg(list()): " print
avg(list()) println

2dList := Object clone
2dList clone = list()
dim := method(x, y,
	self preallocateToSize(y)
	for(i, 0, y - 1,
		self append(list() setSize(x))
	)
)
set := method(x, y, value,
	(self at(y)) atPut(x, value)
	return self
)
get := method(x, y,
	return (self at(y)) at(x)
)

printMatrix := method(w,
	stdout := File openForUpdating(w)
	(self) foreach(j,
		stdout write(j join(" "))
		stdout write("\n")
	)
)

readMatrix := method(r,
	self empty
	stdin := File open(r)
	stdin foreachLine(s, 
		self append(s removeSuffix("\n") split(" "))
	)
	stdin close
)

a := 2dList clone
"dim(2, 3) 2D:\n" print
(a dim(2, 3)) println

"set(1, 1, 2) 2D:\n" print
a = a set(1, 1, 2)
a println

"get(1, 1) 2D: " print
(a get(1, 1)) println

a readMatrix("iostdin.inp")
a printMatrix("iostdout.out")
