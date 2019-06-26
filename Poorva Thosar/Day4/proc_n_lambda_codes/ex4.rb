our_proc = Proc.new { |x| puts x + 5}

our_proc.call(7)

#now lets write
our_proc1 = Proc.new { |x, y| puts x + y}

our_proc1.call(7, 10)
# our_proc1.call(7) gives error saying hat lambda doesn't have enough arguments
our_proc1.call(7, 8, 10)  # this works but ideally it shouldn't
