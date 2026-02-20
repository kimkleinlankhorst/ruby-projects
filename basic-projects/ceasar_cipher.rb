# frozen_string_literal: true

def ceasar_cipher(input, shift_factor)
  input.chars.map do |char|
    if char.match?(/[a-zA-Z]/)
      # Decide what base to use, 'a' for lowercase and 'A' for uppercase
      base = char.downcase == char ? 'a'.ord : 'A'.ord
      # Calculate the times to shift, modulo 26 for wrap around after z
      (((char.ord - base + shift_factor) % 26) + base).chr
    else
      char
    end
  end.join
end

puts 'Enter your text to ceaser_cipher: '
input = gets.chomp
puts 'Enter the shift factor (an integer!): '
shift_factor = gets.chomp
puts ceasar_cipher(input, shift_factor.to_i)
