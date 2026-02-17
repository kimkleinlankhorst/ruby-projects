def ceasar_cipher(input, shift_factor)

  ordinals = input.chars.map do |char|
    if (char.match?(/[A-Za-z]/)) 
      char.ord + shift_factor
    else
      char.ord
    end
  end

  p ordinals

  p ceasar = ordinals.map {|ord| ord.chr()}.join
end

ceasar_cipher("What a string!", 5)