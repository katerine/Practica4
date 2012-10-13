class Circunferencia

  def initialize(perimetro)
    @perimetro = perimetro  #Atributo de clase perimetro
  end
  
  def radio
    @perimetro / (2*3.14)
  end
  
end

require "circunferencia"
require "test/unit"

class TestCircunferencia < Test::Unit::TestCase
  
  def test_calculo_radio_ok 
    assert_equal(2, Circunferencia.new(12.56).radio())
  end
  
  def test_negativo
    assert_raise(RuntimeError,"No puede haber perC-metros o radios negativos") {Circunferencia.new(-50).radio()}
  end
  
  def test_no_numero
    assert_raise(RuntimeError,"El perC-metro debe ser un nC:mero positivo") {Circunferencia.new("blabla").radio()}
  end
  
  def test_calculo_radio_ko 
    assert_equal(5, Circunferencia.new(12.56).radio())
  end
  
end
