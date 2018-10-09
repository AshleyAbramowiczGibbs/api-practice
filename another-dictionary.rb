
require "http"
system "clear"

puts "I have another dictionary but this one finds all the different parts of speech it can be in the english language. Enter a word: "

word = gets.chomp

response = HTTP.get ("https://api.wordnik.com/v4/word.json/#{word}/definitions?limit=200&includeRelated=false&useCanonical=false&includeTags=false&api_key=ac6099e63826b8650f05e22c4cc08baa2f21668e3f16176fd")

data = response.parse

def part_of_speech(data)

  index = 0

  data.length.times do
  puts data[index]["partOfSpeech"]
  index = index + 1
  end
end

part_of_speech(data)

