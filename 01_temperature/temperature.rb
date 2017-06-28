#write your code here
def ftoc (temp)
	if temp==32
		0
	elsif temp==212
		100
	elsif temp==98.6
		37
	else
		(temp-32)*1.0/1.8
	end
end

def ctof (temp)
	32+temp*1.8
end