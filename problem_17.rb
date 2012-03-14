ones = %w{ignored one two three four five six seven eight nine}
tricky = %w{ten eleven twelve thirteen fourteen fifteen sixteen seventeen eighteen nineteen}
tens = %w{ignored ten twenty thirty forty fifty sixty seventy eighty ninety}

def one_digit_number(digit, ones)
  ones[digit]
end

def two_digit_number(digit_one, digit_two, ones, tricky, tens)
  if digit_one == 1
    number_word = tricky[digit_two]
  else
    number_word = tens[digit_one]
    number_word += one_digit_number(digit_two, ones) if digit_two != 0
  end
  number_word
end

def three_digit_number(digit_one, digit_two, digit_three, ones, tricky, tens)
  number_word = ones[digit_one] + "hundred"
  
  unless (digit_two == 0 && digit_three == 0)
    number_word += "and"
    if digit_two == 0
      number_word += one_digit_number(digit_three, ones)
    else
      number_word += two_digit_number(digit_two, digit_three, ones, tricky, tens)
    end
  end
  
  number_word
end

number_words = []
1.upto(1000) do |number|
  number_str = number.to_s
  if number_str.length == 1
    number_words << one_digit_number(number, ones)
  elsif number_str.length == 2
    first_digit = number_str[0..0].to_i
    second_digit = number_str[1..1].to_i
    number_words << two_digit_number(first_digit, second_digit, ones, tricky, tens)
  elsif number_str.length == 3
    first_digit = number_str[0..0].to_i
    second_digit = number_str[1..1].to_i
    third_digit = number_str[2..2].to_i
    number_words << three_digit_number(first_digit, second_digit, third_digit, ones, tricky, tens)
  else
    number_words << "onethousand"
  end
end

number_and_length = {}
number_words.each{|number| number_and_length[number] = number.length}
puts number_and_length.inspect
puts number_and_length.values.inject(:+)