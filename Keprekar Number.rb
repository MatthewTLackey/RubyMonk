def kaprekar?(k)
  squared = k**2
  n = squared.to_s.length
  num_string = squared.to_s
  num_string.split('')
  left = Array.new
  right = Array.new
  counter = 0
  
  until counter == n / 2
    left << num_string[counter]
    counter += 1
  end
puts left
  until counter == (n + 1)
    right << num_string[counter]
    counter += 1
  end

  puts right
  left_final = left.join('').to_i
  right_final = right.join('').to_i


  
  if left_final + right_final == k
    puts true
    return true
  else 
    puts false
    return false
  end
  
  
end

kaprekar?(297)
kaprekar?(9)