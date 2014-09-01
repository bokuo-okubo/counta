# -*- coding:utf-8-*-

class Counta
	def initialize 
		@ary = %w(1 2 3)
		@pointa = -1

		printNote
		
		input =""
		while input != "quit"
			input = getInput
		end
	end

	def getInput
		input = gets.chomp.to_s
		case input
		when "f"
			goForward
		when "b"
			goBackward
		when "quit"
			exit
		else
			printNote
		end
		input
	end

	def printNote
		print "If you want to exit, type \"quit\"\n"
		print "type \"f\" or \"b\" \!\n"
	end



	def goForward
		if @pointa < 2
			@pointa += 1
		else
			@pointa = 0
		end
		p @ary[@pointa]
	end

	def goBackward
		if @pointa > 0
			@pointa -= 1
		else
			@pointa = 2
		end
		p @ary[@pointa]
	end
end

###########
Counta.new
