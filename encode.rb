require "morse"

def encode(text)
  words = text.gsub(/[,.!?']/, '').split(' ')
  words.map { |word| encode_word(word) }.join('|')
end
