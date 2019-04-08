require 'test_helper'

class ComplaintTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  setup do
    @bathroom = complaints(:bathroom)
  end

  test "complaint fields must not be empty" do
    complaint = Complaint.new
    assert @bathroom.valid?
  end

end
