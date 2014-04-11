module Utils

  def bytes_nb x
    x.to_i.size
  end

  def bits_nb x
    8 * bytes_nb(x)
  end

  def bits_integer
    bits_nb 1
  end

  def max_integer
    bytes_nb = 1.size
    bits_nb = bytes_nb * 8
    2**(bits_nb-2) -1
  end

  def min_integer
    -max_integer - 1
  end

end