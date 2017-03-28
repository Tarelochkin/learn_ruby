class Timer
  attr_accessor :seconds
  def initialize
    @seconds = 0
  end

  def time_string
    def padded int
      if int < 10
        int = "0" + int.to_s
      else
        int = int.to_s
      end
    end

    @hours = @seconds / 3600
    @h = padded(@hours)
    @seconds = @seconds - @hours * 3600
    @minutes = @seconds / 60
    @m = padded(@minutes)
    @s = padded(@seconds - @minutes * 60)

    @h+":"+@m+":"+@s

  end
end
