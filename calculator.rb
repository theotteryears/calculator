require_relative "calculator"

restart = "Y"

while restart == "Y"
  puts "Hello!"
  puts "Please enter the first number: "
  first_number = gets.chomp.to_f
  puts "Please enter the second number: "
  second_number = gets.chomp.to_f
  puts "Please choose the operator [+][-][*][/]"
  operator = gets.chomp.to_s

  result = calculate(first_number, second_number, operator)

  puts "The total is #{result}"
  puts "-------------------"
  puts "Do you want to calculate again? [Y/N]"
  restart = gets.chomp.upcase
  if restart != "Y"
    puts "-------------------"
    puts "Thanks and GOODBYE!"
  end
end
