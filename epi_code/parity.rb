require_relative 'utils/utils'
require 'test/unit/assertions'
require_relative 'parity1'
require_relative 'parity2'

include Utils
include Test::Unit::Assertions

class Parity

  class << self

    def main
      0.upto(999) do
        x = Random.rand(max_integer)
        assert(Parity2.parity2(x) == Parity1.parity1(x))
      end
    end
  end

end

Parity.main