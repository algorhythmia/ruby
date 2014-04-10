class Parity1

  class << self

    def parity1 x
      result = 0
      while x != 0
        result ^= (x & 1)
        x >>= 1
      end
      result
    end

  end
end