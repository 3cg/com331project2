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

  test "accepts a photo file attachment" do
    @complaint = complaints(:bathroom)
    file = Rails.root.join('test','fixtures','files','brokentableiit.jpg')
    @complaint.photo.attach(io: File.open(file),filename: 'brokentableiit.jpg')
    assert @complaint.save
    assert @complaint.valid?
    assert @complaint.photo.attached?
  end

end
