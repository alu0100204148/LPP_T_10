# define la clase numero complejo  
class Complejo
  attr_reader :real, :imag
 
  # método inicializar clase
  def initialize(real=0, imag=0)  
    # atributos
    @real = real
    @imag = imag
  end
 

  def +(num)
    real = @real + num.real
    imag = @imag + num.imag

    Complejo.new real, imag 
  end


  def -(num)
    real = @real - num.real
    imag = @imag - num.imag

    Complejo.new real, imag 
  end


  def *(num)
    if num.kind_of? Complejo
      real = (@real * num.real) - (@imag * num.imag)
      imag = (@real * num.imag) + (@imag * num.real)

      Complejo.new real, imag
    else
      real = @real * num
      imag = @imag * num

      Complejo.new real, imag
    end
  end


  def /(num)
    real = ((@real.to_f * num.real) + (@imag * num.imag)) / ((num.real * num.real)+(num.imag * num.imag))
    imag = ((@imag.to_f * num.real) - (@real * num.imag)) / ((num.real * num.real)+(num.imag * num.imag))

    Complejo.new real, imag 
  end


  def to_s
    real = @real
    imag = @imag
    if real.kind_of? Float
      real = real.round(3)
    end
    if imag.kind_of? Float
      imag = imag.round(3)
    end

    if @real == 0
      if @imag == 1
        "i"
      elsif @imag == -1
        "-i"
      elsif @imag == 0
        "0"
      else
        "#{imag}i"
      end
    elsif @imag == 0
      "#{real}"
    elsif @imag == 1
      "(#{real}+i)"
    elsif @imag == -1
      "(#{real}-i)"
    elsif @imag < 0
      "(#{real}#{imag}i)"
    elsif @imag > 0
      "(#{real}+#{imag}i)"
    end
  end


end



