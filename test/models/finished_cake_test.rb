require "test_helper"

class FinishedCakeTest < ActiveSupport::TestCase

  def setup
    @finished_cake = FinishedCake.new
  end

  def test_valid
    assert @finished_cake.valid?
  end

end
