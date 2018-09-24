# Function Declarations
def Addition(num1,num2)
   return num1 + num2
end
def Subtraction(num1,num2)
   return num1 - num2
end
def Divison(num1,num2)
   return num1 / num2
end
def Multiplication(num1,num2)
   return num1 * num2
end
def Power(num1,num2)
   return num1 ** num2
end
def SquareRoot(num1)
   return Math.sqrt(num1)
end
def BMIMet(num1,num2)
   return num1/(num2 ** 2)
end
def BMIImp(num1,num2)
   return (num1/(num2 ** 2)) *703
end

# Main 
puts "welcome to the Super Calculator"
puts "Enter A for Advanced Calculator, B for basic Calculator  or M for BMI Calculator"
input = gets.chomp.upcase
num1 = 0.0
num2 = 0.0
case input
when 'A'
  puts "Welcome to Advanced Calculator"
  puts "Enter First Number"
  num1 = gets.chomp.to_f
  puts "Enter Second Number"
  num2 = gets.chomp.to_f
  puts "Enter P to find power of a number or Q to find Square root of number"
  input = gets.chomp.upcase
  if input == "P"
    puts " #{num1} ^ #{num2} = #{Power num1, num2} "
  elsif input == "Q"
    puts " Square root of #{num1} = #{SquareRoot num1} "
  else
  end
when 'B'
  puts "Welcome to Basic Calculator"
  puts "Enter First Number"
  num1 = gets.chomp.to_f
  puts "Enter Second Number"
  num2 = gets.chomp.to_f
  puts "Enter A to Add, S to Subtract, D to divide or M to Multiply"
  input = gets.chomp.upcase
  case input
  when 'A'
    puts " #{num1} + #{num2} = #{Addition num1, num2} "
  when 'S'
    puts " #{num1} - #{num2} = #{Subtraction num1, num2} "
  when 'D'
    puts " #{num1} ÷ #{num2} = #{Divison num1, num2} "
  when 'M'
    puts " #{num1} x #{num2} = #{Multiplication num1, num2} "
  end

when 'M'
  puts "Welcome to BMI Calculator"
  puts "Enter I for Imperial or M for Metric"
  input = gets.chomp.upcase
  if input == "M"
    puts "Enter your Weight in kilograms"
    num1 = gets.chomp.to_f
    puts "Enter your Height in Meters"
    num2 = gets.chomp.to_f
    puts " your BMI is #{BMIMet num1, num2} "
  elsif input == "I"
    puts "Enter your Weight in pounds"
    num1 = gets.chomp.to_f
    puts "Enter your height in inches"
    num2 = gets.chomp.to_f
    puts " your BMI is #{BMIImp num1, num2} "
  else
    puts "Not a Valid Input"
  end
else
  puts "Not a Valid Input"
end
