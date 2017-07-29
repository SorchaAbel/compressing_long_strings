class TextCompressor
  attr_reader :unique, :index

  def initialize(text)
    p 'inside initialize'
    @unique = []
    @index = []
    add_text(text)
  end

  def add_text(text)
    p 'inside add_text'
    words = text.split
    words.each {|word| add_word(word)}
  end

  def add_word(word)
    p 'inside add_word'
    i = unique_index(word) || add_unq_word(word)
    @index << i
  end

  def unique_index(word)
    p 'inside unique_index'
    @unique.index(word) # will return nil if not there
  end

  def add_unq_word(word)
    p 'inside add_unq_word'
    @unique << word
    unique.size - 1
  end
end
