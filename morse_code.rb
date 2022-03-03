MORSE = { '.-' => 'a',
'-...' => 'b',
'-.-.' => 'c',
'-..' => 'd',
'.' => 'e',
'..-.' => 'f',
'--.' => 'g',
'....' => 'h',
'..' => 'i',
'.---' => 'j',
'-.-' => 'k',
'.-..' => 'l',
'--' => 'm',
'-.' => 'n',
'---' => 'o',
'.--.' => 'p',
'--.-' => 'q',
'.-.' => 'r',
'...' => 's',
'-' => 't',
'..-' => 'u',
'...-' => 'v',
'.--' => 'w',
'-..-' => 'x',
'-.--' => 'y',
'--..' => 'z', 
'.----' => '1',
'..---' => '2',
'...--' => '3',
'....-' => '4',
'.....' => '5',
'-....' => '6',
'--...' => '7',
'---..' => '8',
'----.' => '9',
'-----' => '0',
}

def decode_char(code)
  return MORSE[code]
end

puts(decode_char('-...'))

def decode_word(code)
  morse_characters = code.split(' ')
  decoded_characters = []
  morse_characters.each { |char| decoded_characters.push(decode_char(char)) }
  return decoded_characters.join('')
end

puts (decode_word('-- -.--'))