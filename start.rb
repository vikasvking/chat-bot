require './colour.rb'

def get_res(input)
	f = File.new("ques.txt","r")
	len=(input.length*0.9).to_i
	c=0
	f.each_line do |i|
		
		break if i==input || /#{input.slice(0..len)}/.match(i) 
		c+=1			
	end
	f.close
	f=File.new("ans.txt","r")
	x=0
	f.each_line do |i|
		if x==c
			puts i.yellow
			return
		end
		x+=1
	end
	puts "sorry i dont know. may be you can teach me. start training.rb!!!".red
end	

puts "hi,I am chatbot,who are you".yellow
name=gets.chomp
puts "hi #{name},ask me somthing".yellow
exit=["BYE","EXIT","QUIT"]
while input=gets do
	if exit.include?(input.chomp.upcase)
		break
	else
		get_res(input)
	end
end
