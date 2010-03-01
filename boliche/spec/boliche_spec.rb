require 'spec_helper'

descreva Boliche do
  
  contexto "jogadas sem spare e sem strike" do
  
    exemplo "deve somar as jogadas sem strike ou spare" do
      Boliche.new([[1,2],[3,4]]).pontos.deve ser_igual_a(10)
    end
    
    exemplo "deve pontuar as jogadas sem spare ou strike" do
      Boliche.new([[1,3],[5,3]]).pontos.deve ser_igual_a(12)
    end
    
    exemplo "deve pontuar as jogadas sem spare ou strike" do
      Boliche.new([[1,1],[0,0],[2,2],[3,6]]).pontos.deve ser_igual_a(15)
    end
  end

  contexto "spare" do
    exemplo "deve retornar verdadeiro se for spare" do
      frame = [5,5]
      Boliche.new(frame).spare?(frame).deve ser_igual_a(true)
    end
    
    exemplo "deve retornar verdadeiro se ocorrer um spare" do
      frame = [6,4]
      Boliche.new(frame).spare?(frame).deve ser_igual_a(true)
    end
    
    exemplo "deve retornar falso se nao for spare" do
      frame = [1,3]
      Boliche.new(frame).spare?(frame).deve ser_igual_a(false)
    end
    
    exemplo "deve retornar falso se a soma das jogadas nao for 10 e strike" do
      frames = [[2,3],[1,5],[6,3],[3,2]]
      frames.each do |frame|
        Boliche.new(frame).spare?(frame).deve ser_igual_a(false)
      end
    end
    
    exemplo "deve retornar falso se for strike" do
      frame = [10]
      Boliche.new(frame).spare?(frame).deve ser_igual_a(false)
    end
        
    exemplo "deve pontuar um spare" do
      Boliche.new([[5,5],[2,6]]).pontos.deve ser_igual_a(20)
    end
    
    exemplo "deve pontuar um spare em qualquer frame" do
      Boliche.new([[1,5],[5,5],[2,6]]).pontos.deve ser_igual_a(26)
    end
    
    exemplo "deve pontuar caso occorra dois spares seguidos" do
      Boliche.new([[5,5], [6,4], [2,6]]).pontos.deve ser_igual_a(36)
    end
    
    exemplo "deve esperar a jogada extra se fizer um spare no ultimo frame" do
      # FIXME: nao sei se tem essa regra
      Boliche.new([[1,5],[5,5]]).pontos.deve ser_igual_a(16)
    end
    
    exemplo "deve calcular o spare somando a proxima jogada" do
      boliche = Boliche.new([[5,5],[3,3]])
      boliche.calcule_o_spare([5,5], 0, 0).deve ser_igual_a(13)
    end
    
    exemplo "deve calcular o spare da junto com a proxima jogada" do
      boliche = Boliche.new([[5,5],[2,6]])
      boliche.calcule_o_spare([5,5], 0, 0).deve ser_igual_a(12)
    end
    
  end
  
  contexto "strike" do
    
    exemplo "deve retornar verdadeiro quando ocorrer um strike" do
      frame = [10]
      Boliche.new(frame).strike?(frame).deve ser_igual_a(true)
    end
    
    exemplo "deve retornar falso se derrubar 10 pinos na ultima jogada do frame" do
      frame = [0, 10]
      Boliche.new(frame).strike?(frame).deve ser_igual_a(false)
    end
    
    exemplo "deve retornar falso se não alcançar 10 em nada no frame" do
      frames = [[1,2], [3,4], [5,4], [7,2]]
      frames.each do |frame| 
        Boliche.new(frame).strike?(frame).deve ser_igual_a(false)
      end
    end
    
    exemplo "deve retornar os pontos caso ocorra algum strike" do
      Boliche.new([[10],[3,5],[4,5]]).pontos.deve ser_igual_a(45)
    end
    
    exemplo "deve retornar os pontos caso ocorra algum strike" do
      Boliche.new([[10],[4,5],[3,6]]).pontos.deve ser_igual_a(47)
    end
        
    exemplo "deve calcular o strike somando as duas proximas jogadas" do
      Boliche.new([[10],[3,5]]).calcule_o_strike(0, 0).deve ser_igual_a(28)
    end
    
    exemplo "deve calcular o strike somadas as duas jogadas do mesmo frame" do
      Boliche.new([[10],[1,8]]).calcule_o_strike(0, 0).deve ser_igual_a(29)
    end
    
    exemplo "deve calcular o strike somando as duas proximas jogadas" do
      Boliche.new([[10],[3,5],[3,3]]).calcule_o_strike(0,0).deve ser_igual_a(28)
    end

    exemplo "deve retornar os pontos do jogo perfeito" do
      Boliche.new([[10]]*12).pontos.deve == 300
    end
    
  end
  
  contexto "somar frames" do
    
    exemplo "deve somar os frames" do
      frame = [1,2]
      Boliche.new([frame]).soma_do_frame(frame).deve ser_igual(3)
    end
    
    exemplo "deve somar os frames" do
      frames_esperados = { [1,3] => 4, [2,5] => 7, [4,4] => 8, [3,6] => 9}
      frames_esperados.each do |frame, resultado_do_frame|
        Boliche.new([frame]).soma_do_frame(frame).deve ser_igual(resultado_do_frame)
      end
    end
    
    exemplo "deve retornar a primeira jogada caso ocorra o strike" do
      frame = [10]
      Boliche.new([frame]).soma_do_frame(frame).deve ser_igual(10)
    end
    
  end
  
end
