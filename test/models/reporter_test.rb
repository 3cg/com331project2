require 'test_helper'

class ReporterTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  setup do
    @Wenwen = reporters(:Wenwen)
    @Jiayu = reporters(:Jiayu)
    @Jessica = reporters (:Jessica)
  end

  test "reports fields are not empty" do
    reporter = Reporter.new
    @Wenwen.uid = 1
    @Wenwen.nickname = "wxie11"
    @Wenwen.email = "wxie11@abc.com"
    assert @Wenwen.valid?
  end

  test "a_number must be eight digits, now or in the future" do
    assert_equal 8, @Wenwen.a_number.to_s.length
  end


end
