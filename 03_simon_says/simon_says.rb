#write your code here
def echo str
  str
end

def shout str
  str.upcase
end

def repeat (str, *times)
  times = times[0]
  if times == nil
    times = 2
  end
  str + (" " + str) * (times - 1)
end

def start_of_word (s, i)
  s[0, i]
end

def first_word str
  str.split(" ")[0]
end

def titleize str
  str_arr = str.split(" ")
  str_new = []
  little_words = ["and", "the", "over"]
  decap = ""
  str_arr.each do |word|
    little_words.each do |little|
      if word == little
        decap = word
      end
      break if word == little
    end
    if word != decap
      word = word.capitalize
    end
    str_new.push word
  end
  str_new[0] = str_new[0].capitalize
  str_new.join(" ")
end
