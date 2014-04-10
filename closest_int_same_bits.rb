require 'test/unit/assertions'
require_relative 'utils/utils'

include Utils
include Test::Unit::Assertions

class ClosestIntSameBits

  class << self

    def closest_int_same_bits x
      x_n = x.to_i
      0.upto(bits_nb(x) - 1) do |i|
        if ((x >> i) & 1) ^ ((x >> (i+1)) & 1) != 0
          x ^= ((1 << i) | (1 << (i+1)))
          return x
        end
      end
      -1
    end

    def count_bits_set_to_1 x
      c = 0
      x_n = x.to_i
      while x_n != 0
        x_n &= (x_n -1)
        c += 1
      end
      c
    end
  end

end

x = ARGV.count == 1 ? ARGV[0] : Random.rand(max_integer)
begin
  assert(ClosestIntSameBits.count_bits_set_to_1(ClosestIntSameBits.closest_int_same_bits(x)) == ClosestIntSameBits.count_bits_set_to_1(x))
rescue Exception => e
  puts "#{x} #{e}"
end