#puts("Hello, world")

#("Hello, Ruby").index('Ruby')

#for a in 1..10 do print "Jerry\n" end

#x = 0
#puts "This is sentence number #{x += 1}." until x == 10

random = rand(10)

while ((a = gets().to_i) != -1) do 
	if a > random 
		puts "Keeps your expectation low"
	elsif a < random 
		puts "Works on your self esteem"
	else 
		puts "You got that right"
		break
	end
end