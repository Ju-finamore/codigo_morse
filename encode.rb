require "morse"

def encode(text)
  words = text.gsub(/[,.!?']/, '').split(' ')
  words.map { |word| encode_word(word) }.join('|')
end

def encode(word)
  word.split('').map { |letter| MORSE[letter.upcase] }.join(' ')
end
