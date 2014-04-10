class Parity2

  class << self

    def parity2 x
      result = 0
      while x != 0
        result ^= 1
        x &= (x-1)
      end
      result
    end
  end

end