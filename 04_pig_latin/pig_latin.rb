#write your code here
def translate (word)
	result=[]
	word=word.split(" ")

	word.each do |a|
		result=result+[apply_to_word(a)]
	end

	result.join(" ")
end 

def apply_to_word (word)
	n=0
	first_split=[]
	second_split=[]
	vowel=["a","e","i","o","u"]
	exceptions=["sch","qu"]

	word=word.split(/(qu)/)

	word.each do |a|
		first_split=first_split+a.split(/("sch")/)
	end
	word=first_split

	word.each do |a|
		if a=="qu"
			second_split=second_split+[a]
		else
			second_split=second_split+a.split("")
		end
	end
	word=second_split

	while !(vowel.include?(word[n]))
		word=rotate(word)
	end
	word.join+"ay"
end

def rotate (word)
	x=word.first
	y=0
	word.each do |a|
		if y<word.length-1
			word[y]=word[y+1]
			y=y+1
		else
			word[y]=x
		end
	end
	word
end