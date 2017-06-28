#write your code here
def add (a,b)
	a+b
end

def subtract (a,b)
	a-b
end

def sum (a)
	total=0
	a.each do |x|
		total=total+x
	end
	total
end

def multiply (a)
	total=1
	a.each do |x|
		total=total*x
	end
	total
end

def power(a,b)
	total=1
	while b>0
		total=total*a
		b=b-1
	end
	total
end

def factorial (n)
	total=1
	while n>0
		total = total*n
		n=n-1;
	end
	total
end