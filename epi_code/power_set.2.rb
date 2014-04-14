require_relative 'utils/utils'

include Utils

class PowerSet

  class << self

    def generate_power_set ary
      0.upto((1 << ary.length) - 1) do |i|
        s = ''
        0.upto(bits_nb(i) - 1) do |j|
          if ((i >> j) & 1) != 0
            s.empty? ? s << "#{ary[j]}" : s << ",#{ary[j]}"
          end
        end
        print "#{s}\n"
      end
    end

    def main
      s = []
      if ARGV.count >= 1
        s = ARGV
      else
        c = Random.rand(10) + 1
        0.upto(c-1) do |i|
          s << i
        end
      end
      generate_power_set s
    end
  end
end

PowerSet.main