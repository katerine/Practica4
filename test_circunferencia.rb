require 'rake/testtask'

task :default => [:test]

desc "Pruebas de la prC!ctica 4 de LPP"
Rake::TestTask.new do |t|
    t.libs << "test"
    t.test_files = FileList['test/tc_*.rb']
    t.verbose = true
endrequire "circunferencia"
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
