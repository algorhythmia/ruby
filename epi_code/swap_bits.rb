require 'test/unit/assertions'
require_relative 'utils/utils'

include Utils

class SwapBits

  class << self

    def swap_bits x, i, j
      if ((x >> i) & 1) != ((x >> j) & 1)
        x ^= ((1 << i) | (1 << j))
      end
    end

    def main
      x, i, j = 0, 0, 0

      if ARGV.count == 3
        x = ARGV[0]
        i = ARGV[1]
        j = ARGV[2]
      else
        x = Random.rand(max_integer)
        i = Random.rand(bits_integer)
        j = Random.rand(bits_integer)
      end
    end

    private
    def simple_test
      assert(swap_bits(47, 1, 4) == 61)
      assert(swap_bits(28, 0, 2) == 25)
    end
  end
end

SwapBits.main