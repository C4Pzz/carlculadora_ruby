def add(a, b)
  return a + b
end

def sub(a, b)
  return a - b
end

def mut(a, b)
  return a * b
end

def div(a, b)
  return a / b
end

loop do
  system("cls")
  puts "|------------------------------|"
  puts "|         CARLCULADORA         |"
  puts "|------------------------------|"
  puts "|     Choose the operation     |"
  puts "|                              |"
  puts "|           1 - Add            |"
  puts "|           2 - Sub            |"
  puts "|           3 - Mut            |"
  puts "|           4 - Div            |"
  puts "|                              |"
  puts "|          5 - Close           |"
  puts "|------------------------------|"
  print "\nOption -> "

  option = gets.chomp.to_i
  system("cls")

  if !(option > 0 and option < 6)
    puts "!Invalid Input!"
  elsif option == 5
    puts "Bye, bye!"
    break # Finaliza o loop
  else
    print "Enter the first value: "
    a = gets.chomp.to_f
    print "Enter the second value: "
    b = gets.chomp.to_f

    case option
      when 1
        puts "\n\t#{a} + #{b} = #{sprintf("%.2f", add(a, b))}"
      when 2
        puts "\n\t#{a} - #{b} = #{sprintf("%.2f", sub(a, b))}"
      when 3
        puts "\n\t#{a} x #{b} = #{sprintf("%.2f", mut(a, b))}"
      else
        puts "\n\t#{a} / #{b} = #{sprintf("%.2f", div(a, b))}"
    end
  end

  puts "\nContinue? [1] Yes or [0] No"
  print "Option -> "
  continue = gets.chomp.to_i
  system("cls")

  if continue == 1
    next # Volta ao início do loop
  else
    puts "Bye, bye!"
    break # Finaliza o loop
  end
end
