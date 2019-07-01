class Hang
	attr_accessor :guess_word, :life,:selected_word
	def initialize
		@life=5
		@words=[
			"hanggame","murlitharan","kabirsingh","awkward","banjo","bingo","hyphen","pulwama","bagpipes",
			"bungler","mumbai","crypt","fervid","gazebo","inspiron","fishhook","module","fjord","ivory",
			"momento","phlegm","squawk"
			]
		@guess=nil
		@ind=0
		@inp_arr=[]
		@hint=1
	end

	def start
		@hint=1
		@selected_word=@words.sample
		self.make_init_word
	end

	def init_guess_word
		@guess_word=""
		@selected_word.length.times {
			@guess_word+='_'
		}
	end

	def find_hint_words(n)
		@hint_word=[]
		while @hint_word.length<n
			temp=@selected_word.chars.sample
			if @selected_word.count(temp)<2
				if !@hint_word.include?(temp)
					@hint_word.push(temp)
				end
			end
		end
	end

	def show_hint
		while true
			temp=@selected_word.chars.sample
			if @guess_word.include?(temp)
				redo
			else
				@hint_index=@selected_word.index(temp)
				@guess_word[@hint_index]=temp
				break
			end
		end
	end

	def print_hint_words
			@hint_word.length.times { |i|
			@hint_index=@selected_word.index(@hint_word[i])
			@guess_word[@hint_index]=@hint_word[i]
		}
	end

	def make_init_word
		self.init_guess_word
		if @selected_word.length < 6
			self.find_hint_words(2)
			self.print_hint_words
		else
			self.find_hint_words(3)
			self.print_hint_words
		end
	end

	def print_user_inputline
		if @hint==1
			puts "\nEnter your choice input[a-z] Lifes:#{@life} (Press * for Hint)"
		else
			puts "\nEnter your choice input[a-z] Lifes:#{@life} "
		end
	end

	def use_hint
		puts "Hint Used !! 1 Life Reduced"
		self.show_hint
		@life-=1
		@hint-=1
	end

	def previous_input
		system "clear"
		puts "Sorry you have gave this input before\n"
	end

	def new_input
		@inp_arr.push(@inp)
		@count=@selected_word.count(@inp)
		if(@count==0)
			system "clear"
			self.wrong_choice
		else
			self.check_user_input
		end
	end

	def get_user_input
		puts "\nPrevious Entered Inputs",@inp_arr
		print("Guess The Word : ",@guess_word)
		puts "\n"
		self.print_user_inputline
		@inp=gets.chomp
		if @inp=="*" && @hint==1
			system "clear"
			self.use_hint
		elsif @inp_arr.include?@inp
			self.previous_input
		else
			self.new_input
		end
	end

	def replace_words
		@ind=0
		while(@count!=0)
			temp=@selected_word[@ind,@selected_word.length].index(@inp)
			if temp
				@guess_word[temp+@ind]=@inp
				@count-=1
				@ind+=temp+1
			end
		end
	end

	def wrong_choice
		system "clear"
		@life-=1
		puts "Wrong Choice !! 1 Life Reduced"
	end

	def print_man
		puts "-----------------"
		@life.times {
			puts "        |        "
		}
		puts "    ____|____    "
		puts "    [ <> <> ]    "
		if @life==0 then 		puts "    [   X   ]    "
		else puts "    [   O   ]    " end
		puts "        |        "
		puts "        |        "
		puts "      _/ \\_       "
	end

	def print_happy_man
		puts "-----------------"
		@life.times {
			puts "        |        "
		}
		puts "    ____|____    "
		puts "    [ <> <> ]    "
		puts "    [   U   ]    "
		puts "        |        "
		puts "        |        "
		puts "      _/ \\_      "
	end

	def check_user_input
		@gcount=@guess_word.count(@inp)
		if @gcount==@count
			system "clear"
			puts "ALl #{@inp} are Already replaced\n"
		else
			system "clear"
			puts "Correct Choice !! \t"
			self.replace_words
		end
	end

end

def guessing(h,name,flag)
	puts "\n"
	h.print_man
	h.get_user_input
	if h.guess_word.count('_')==0
		flag=1
		system "clear"
		h.print_happy_man
		puts "\n!!#{name} is a CHAMPION!!"
	end
end

def gameover(h,name)
	system "clear"
	h.print_man
	puts "Sorry #{name} Game Over !! The Right Word was #{h.selected_word} \n"
end

puts "\n****************Welcome to HANG GAME****************\n"
puts "\nEnter Your Name"
name=gets.chomp
ch=1
while ch==1
	h=Hang.new
	system "clear"
	h.start
	flag=0
	while h.guess_word.include?('_') && h.life>0
		guessing(h,name,flag)
	end
	if flag==0
		gameover(h,name)
	end
	puts "Press 1 to play Again or 0 to exit\n"
	ch=gets.chomp.to_i
end