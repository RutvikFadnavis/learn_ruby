class Timer
  #write your code here
 	def initialize
 		@seconds=0
	end
	def seconds
		@seconds
	end

	def time_string=(time_string)
		time=Time.new(2007,11,1,0,0,0,"+00:00") + @seconds
		time=time.asctime
		time=time.split(" ")
		@time_string=time[3]
		@time_string
	end
	def time_string
		@time_string
	end

end
