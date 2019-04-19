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
    @Wenwen.name = "Wenwen"
    assert @Wenwen.valid?
  end

end
