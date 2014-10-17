require 'lib/complejo'
require 'test/unit'
 
class TestComplejo < Test::Unit::TestCase

  def setup
    @a = Complejo.new(2,4)
    @b = Complejo.new(3,5)
    @c = Complejo.new(7,9)
    @d = Complejo.new(3,4)
  end

  def test_suma
    assert_equal '(5+9i)', ( (@a+@b).to_s)
    assert_equal '(10+13i)', ( (@c+@d).to_s)
    assert_equal '(9+13i)', ( (@a+@c).to_s)
    assert_equal '(6+9i)', ( (@b+@d).to_s)
  end
 
  def test_resta
    assert_equal '(-1-i)', ( (@a-@b).to_s)
    assert_equal '(4+5i)', ( (@c-@d).to_s)
    assert_equal '(-5-5i)', ( (@a-@c).to_s)
    assert_equal 'i', ( (@b-@d).to_s)
  end

  def test_multiplicacion
    assert_equal '(-14+22i)', ( (@a*@b).to_s)
    assert_equal '(-15+55i)', ( (@c*@d).to_s)
    assert_equal '(-22+46i)', ( (@a*@c).to_s)
    assert_equal '(-11+27i)', ( (@b*@d).to_s)
  end

  def test_division
    assert_equal '(0.765+0.059i)', ( (@a/@b).to_s)
    assert_equal '(2.28-0.04i)', ( (@c/@d).to_s)
    assert_equal '(0.385+0.077i)', ( (@a/@c).to_s)
    assert_equal '(1.16+0.12i)', ( (@b/@d).to_s)
  end
end
