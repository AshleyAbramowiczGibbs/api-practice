require "http"
system "clear"

print "Type a word to get the definition: "

word = gets.chomp

response = HTTP.get ("https://api.wordnik.com/v4/word.json/#{word}/definitions?limit=200&includeRelated=false&useCanonical=false&includeTags=false&api_key=ac6099e63826b8650f05e22c4cc08baa2f21668e3f16176fd")
data = response.parse

def all_definitions(data)

  index = 0

  data.length.times do
    definition = data[index]["text"]
    puts definition
    index = index + 1
  end
end

all_definitions(data)






