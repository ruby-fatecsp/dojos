class Boliche
  attr_accessor :jogadas
  
  def initialize(jogadas)
    @jogadas = jogadas
  end
  
  def pontos
    total = 0
    @jogadas.each_with_index do |frame, numero_do_frame_atual|
      if spare?(frame)
        total = calcule_o_spare(frame, numero_do_frame_atual, total)
      elsif strike?(frame)
        total = calcule_o_strike(numero_do_frame_atual, total)
      else
        total += soma_do_frame(frame)
      end
    end
    total
  end
  
  # Será spare somente quando a soma das jogadas for 10
  # E o 10 não for feito na primeira jogada(porque daí seria strike)
  def spare?(frame)
    return true if soma_do_frame(frame) == 10 and not strike?(frame)
    false
  end
  
  def strike?(frame)
    return true if frame[0] == 10
    false
  end
  
  # Calcula o spare da jogada com a proxima jogada do proximo frame
  # (Isso que entendi! =] )
  def calcule_o_spare(frame, numero_do_frame_atual, total)
    jogada_a_ser_somada = proximo_frame(numero_do_frame_atual)[0]
    total += soma_do_frame(frame) + jogada_a_ser_somada
  end

  # Calcula o strike da jogada com as duas jogadas do proximo frame: 
  # (Isso que tbm entendi! =] )
  def calcule_o_strike(numero_do_frame_atual, total)
    proximo_frame(numero_do_frame_atual).each do |jogada|
      total += jogada + 10
    end
    total
  end
  
  # soma as duas jogadas senão for strike
  # senão retorna o 10 (de Strike!!!)
  def soma_do_frame(frame)
    return frame[0] + frame[1] unless strike?(frame)
    frame[0]
  end
  
  # pega o proximo frame senão retorna uma array com zero
  def proximo_frame(numero_do_frame_atual)
    jogadas[numero_do_frame_atual + 1] || [0]
  end
    
end