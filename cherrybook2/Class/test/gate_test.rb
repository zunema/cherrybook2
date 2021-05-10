require 'minitest/autorun'
require './lib/gate'
require './lib/ticket'

class GateTest < Minitest::Test

  def setup
    @umeda = Gate.new(:umeda)
    @juso = Gate.new(:juso)
    @mikuni = Gatre.new(:mikuni)
  end

  def test_umeda_to_juso
    umeda = Gate.new(:umeda)
    juso = Gate.new(:juso)
    ticket = Ticket.new(150)
    umeda.enter(ticket)
    assert juso.exit(ticket)
  end

  def test_umeda_to_mikuni_when_fare_is_not_enough
    umeda = Gate.new(:umeda)
    mikuni = Gate.new(:mikuni)

    ticket = Ticket.new(150)
    umeda.enter(ticket)
    refute mikuni.exit(ticket)
  end

end