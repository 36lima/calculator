opNames = {'1' => 'plus', '2' => 'minus', '3' => 'times', '4' => 'divided by'}
def say(msg)
  puts "=> #{msg}"
end

def num_validator(num1)

end

say "What's the first number?"
num1 = gets.chomp

say "What's the second number?"
num2 = gets.chomp

say "1) add 2) subtract 3) multiply 4) divide"

operator = gets.chomp

# if/else/elsif and case statement
if operator == '1'
  result = num1.to_i + num2.to_i
elsif operator == '2'
  result = num1.to_i - num2.to_i
elsif operator =='3'
  result = num1.to_i * num2.to_i
else operator == '4'
  result = num1.to_i / num2.to_f
end

puts "For #{num1} #{opNames[operator]} #{num2}, the result is #{result}"
