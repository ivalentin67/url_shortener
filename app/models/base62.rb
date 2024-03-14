class Base62
  ALPHABET = "0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"
  BASE = ALPHABET.length

  def self.encode(number)
    if number.zero? || number.nil?
      return ALPHABET.first
    end

    result = ""

    while number > 0 do
      index = number % BASE
      result.prepend ALPHABET[index]

      number = number / BASE
    end

    result
  end

  def self.decode(string)
    number = 0

    string.reverse.each_char.with_index do |char, index|
      power = BASE**index
      index = ALPHABET.index(char)
      number += index * power
    end

    number
  end
end

# Base62.encode(1024)
# Base62.decode("gw")