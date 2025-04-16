# statistics.rb
class Statistics
  def initialize(numbers)
    @numbers = numbers
  end

  def find_max
    @numbers.max()
  end

  def find_min
    @numbers.min()
  end

  def average
    @numbers.inject{ |sum, el| sum + el.to_f } / @numbers.size
  end

  def mode
    freq = @numbers.tally

    p freq.select {|k, v| v == freq.values.max}.keys
  end

  def even_numbers
    @numbers.select do |el|
      el % 2 == 0
    end
  end

  def count_vowels(texts)
    @texts = texts
    @texts.count('aeiou')
  end

  def factorial(n)
    (1..n).inject(:*)
  end
end
