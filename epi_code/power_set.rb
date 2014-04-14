class PowerSet

  class << self


    def generate_power_set ary
      0.upto((1 << ary.length) - 1) do |i|
        x = i
        while x != 0
          tar = Math.log2(x & ~(x-1))
          print ary[tar]
          if (x &= (x-1)) != 0
            print ','
          end
        end
        print "\n"
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