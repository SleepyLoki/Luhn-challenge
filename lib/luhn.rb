module Luhn
  def self.is_valid?(number)
    final_array = []
    digits = number.to_s.split('').map(&:to_i)
    digits.reverse.each_with_index do |num, index|
      if index % 2 == 0
        final_array << num
      else
        double = num * 2

        if double >= 10
          double -= 9
        end
        final_array << double
      end
    end
    sum = final_array.inject(:+)

    if sum % 10 == 0
      return true
    else
      return false
    end
  end
end
