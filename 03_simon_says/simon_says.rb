#write your code here
def echo (echo)
	echo
end

def shout (echo)
	echo.upcase
end

def repeat (echo, n=2)
	final=""
	necho=echo+" "
	final=necho*(n-1) + echo
	final
end

def start_of_word (echo, n=1)
	final=""
	x=0
	while x<n
		final=final+echo[x]
		x=x+1
	end
	final
end

def first_word (echo)
	echo.split(" ").first
end

def titleize (echo)
	x=0
	echo = echo.split(" ")
	exclude = ["of","and","a","to","the","over"]
	echo.each do |word| 
		if !(exclude.include?(word)) || word==echo.first
		word[0]=word[0].upcase
		end
	end
	echo.join(" ")
end

