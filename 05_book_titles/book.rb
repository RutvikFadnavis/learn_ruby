class Book
# write your code here
	def title
		@title
	end

	def title=title

		title=title.split()
		exclude = ["a","an","the","and","but","or","in","of","to","over"]
		title.each do |a|
			if !(exclude.include?(a)) || a==title[0]
				a[0]=a[0].upcase
			end
		end
		@title=title.join(" ")
	end
end