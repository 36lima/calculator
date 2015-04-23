
# Calculator App

# Map numerical operation menu items to english
opNames = {'1' => 'plus', '2' => 'minus', '3' => 'times', '4' => 'divided by'}

# say(msg) - Format output messages to user
def say(msg)
  puts "=> #{msg}"
end

# get_number(first_or_second) - function to prompt for first or second entry
# Returns user entered number
def get_number(first_or_second)
  say "what is the #{first_or_second} number?"
  gets.chomp
end

# get_op(num1, num2) - Prompt user for operation from menu. Validates operator and re-prompts if not within 
# acceptable range
# Returns operator, result of operation
def get_op(num1, num2)
  say "1) add 2) subtract 3) multiply 4) divide"

  operator = gets.chomp

  loop do
    valid = 1
    # if/else/elsif and case statement
    if operator == '1'
      return operator, result = num1.to_i + num2.to_i
    elsif operator == '2'
      return operator, result = num1.to_i - num2.to_i
    elsif operator =='3'
      return operator, result = num1.to_i * num2.to_i
    elsif operator == '4'
      return operator, result = num1.to_i / num2.to_f
    else
      say "Please enter a selection between 1 and 4!\n"
      operator = gets.chomp
    end
  end
end 




# main program loop
loop do
  num1 = get_number('first')
  num2 = get_number('second')
  operator, result = get_op(num1, num2)
  puts "For #{num1} #{opNames[operator]} #{num2}, the result is #{result}"
  puts say("Do another calculation?:[Y|N]")
  answer = gets.chomp
  if answer.downcase == 'n'
    break
  end
end