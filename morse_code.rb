MORSE = { '.-' => 'A',
          '-...' => 'B',
          '-.-.' => 'C',
          '-..' => 'D',
          '.' => 'E',
          '..-.' => 'F',
          '--.' => 'G',
          '....' => 'H',
          '..' => 'I',
          '.---' => 'J',
          '-.-' => 'K',
          '.-..' => 'L',
          '--' => 'M',
          '-.' => 'N',
          '---' => 'O',
          '.--.' => 'P',
          '--.-' => 'Q',
          '.-.' => 'R',
          '...' => 'S',
          '-' => 'T',
          '..-' => 'U',
          '...-' => 'V',
          '.--' => 'W',
          '-..-' => 'X',
          '-.--' => 'Y',
          '--..' => 'Z',
          '.----' => '1',
          '..---' => '2',
          '...--' => '3',
          '....-' => '4',
          '.....' => '5',
          '-....' => '6',
          '--...' => '7',
          '---..' => '8',
          '----.' => '9',
          '-----' => '0' }.freeze

def decode_char(code)
  MORSE[code]
end

puts(decode_char('-...'))

def decode_word(code)
  morse_characters = code.split
  decoded_characters = []
  morse_characters.each { |char| decoded_characters.push(decode_char(char)) }
  decoded_characters.join
end

puts(decode_word('-- -.--'))
def decode_msg(code)
  message = code.split('   ')
  decoded_msg = []
  message.each { |char| decoded_msg.push(decode_word(char)) }
  decoded_msg.join('  ')
end
puts(decode_msg('-- -.--   -. .- -- .'))
p decode_word('-- -.--')
p decode_msg('-- -.--   -. .- -- .')
p decode_msg('.-   -... --- -..-   ..-. ..- .-.. .-..    --- ..-.    .-. ..- -... .. . ...')
p decode_msg('.-   -... --- -..-   ..-. ..- .-.. .-..    --- ..-.    .-. ..- -... .. . ...')
p decode_msg('.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...')
