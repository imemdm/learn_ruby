class Timer
  attr_accessor :seconds

  def initialize
    @seconds = 0
  end

  def seconds=(value)
    @seconds = value
  end

  def time_string
    seconds = @seconds % 60
    minutes = (@seconds / 60) % 60
    hours = ((@seconds / 60) / 60) % 60

    "#{padded hours}:#{padded minutes}:#{padded seconds}"
  end
  
  def padded num
    num.to_s.rjust(2, "0")
  end
end
