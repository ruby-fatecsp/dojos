class Boliche

  def initialize(jogadas)
    @jogadas = jogadas
  end

  def pontos
    total = 0
    j = @jogadas.dup
    until j.empty?
      if j.first == 10
        frame = j.slice!(0,1)
        strike = true
      else
        frame = j.slice!(0,2)

      end
      frame_points = frame[0].to_i + frame[1].to_i

      case frame_points
      when 10
        total += frame_points + j.first
        if strike
          total += j[1]
        end
      else
        total += frame_points
      end
    end
    total
  end

end

