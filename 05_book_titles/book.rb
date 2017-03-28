class Book
  attr_accessor :title

  def title
    title = []
    exceptions = ["the", "a", "an", "and", "in", "of"]
    title_split = @title.split(/(\W+)/)
    title_split.each do |word|
      word = word.capitalize
      exceptions.each do |exception|
        if word == exception.capitalize
          word = word.downcase
        end
        break if word == exception
      end
      title.push(word)
    end
    title[0] = title[0].capitalize
    title.join("")
  end

end
