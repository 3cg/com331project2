require "application_system_test_case"

class ComplaintsTest < ApplicationSystemTestCase
  setup do
    @complaint = complaints(:bathroom)
  end

  test "visiting the index" do
    visit complaints_url
    assert_selector "h1", text: "Complaints"
  end

  test "creating a Complaint" do
    visit complaints_url
    #click_on "New Complaint"

    click_on "Create New Complaint"

    fill_in "Date", with: @complaint.date
    select @complaint.location, from: 'Location'
    select @complaint.department, from: 'Department'
    fill_in "Description", with: @complaint.description
    fill_in "Reporter", with: @complaint.person_number
    click_on "Save"

    assert_text "Complaint was successfully created"
    click_on "Back"
  end

  #test "updating a Complaint" do
    #visit complaints_url
    #click_on "Edit", match: :first

    #click_on "Update Complaint"

    #assert_text "Complaint was successfully updated"
    #click_on "Back"
  #end

  #test "destroying a Complaint" do
    #visit complaints_url
    #page.accept_confirm do
      #click_on "Destroy", match: :first
    #end

    #assert_text "Complaint was successfully destroyed"
  #end
end
