
# Calculator App

operator_names = {'1' => 'plus', '2' => 'minus', '3' => 'times', '4' => 'divided by'}

def say(msg)
  puts "=> #{msg}"
end

def get_number(ordinal)
  say "what is the #{ordinal} number?"
  gets.chomp
end

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
      while(num2.to_f == 0.0)
        say("Cannot divide by zero!")
        say("Please enter a second number that is not equal to 0:")
        num2 = gets.chomp
      end
      return operator, result = num1.to_i / num2.to_f
    else
      say "Please enter a selection between 1 and 4!\n"
      operator = gets.chomp
    end
  end
end 

loop do
  num1 = get_number('first')
  num2 = get_number('second')
  operator, result = get_op(num1, num2)
  say("For #{num1} #{operator_names[operator]} #{num2}, the result is #{result}")
  say("Do another calculation?:[Y|N]")
  answer = gets.chomp
  if answer.downcase == 'n'
    break
  end
end