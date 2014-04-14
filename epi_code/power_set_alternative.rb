class PowerSetAlternative

  class << self

    def generate_power_set_helper s, idx, res
      if !res.empty?
        puts res.join(',')
      end

      idx.upto(s.size - 1) do |i|
        res.push s[i]
        generate_power_set_helper s, i + 1, res
        res.pop
      end
    end

    def generate_power_set s
      res = []
      generate_power_set_helper s, 0, res
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

PowerSetAlternative.main