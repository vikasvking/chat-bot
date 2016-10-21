
require './colour.rb'

question=File.new("ques.txt","a+")
answer=File.new("ans.txt","a+")
exit=["QUIT","EXIT","BYE"]
puts "start training"
while true
	puts "what is the question?".yellow
	ques=gets.chomp
	break if exit.include?(ques.upcase)
	puts "what is the answer?".green
	ans=gets.chomp
	question.puts(ques)
	answer.puts(ans)
end
question.close
answer.close
	
