require 'minitest/autorun'
require './lib/gate'

class GateTest < Minitest::Test
  def test_gate
    # とりあえずGateオブジェクトが作れることを確認する
    assert Gate.new
  end
end