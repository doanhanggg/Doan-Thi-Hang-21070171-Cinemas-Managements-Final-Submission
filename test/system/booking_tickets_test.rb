require "application_system_test_case"

class BookingTicketsTest < ApplicationSystemTestCase
  setup do
    @booking_ticket = booking_tickets(:one)
  end

  test "visiting the index" do
    visit booking_tickets_url
    assert_selector "h1", text: "Booking tickets"
  end

  test "should create booking ticket" do
    visit booking_tickets_url
    click_on "New booking ticket"

    fill_in "Add popcorn combo", with: @booking_ticket.add_popcorn_combo
    fill_in "Position", with: @booking_ticket.position
    fill_in "Screen type", with: @booking_ticket.screen_type
    fill_in "Seat type", with: @booking_ticket.seat_type
    fill_in "Ticket number", with: @booking_ticket.ticket_number
    click_on "Create Booking ticket"

    assert_text "Booking ticket was successfully created"
    click_on "Back"
  end

  test "should update Booking ticket" do
    visit booking_ticket_url(@booking_ticket)
    click_on "Edit this booking ticket", match: :first

    fill_in "Add popcorn combo", with: @booking_ticket.add_popcorn_combo
    fill_in "Position", with: @booking_ticket.position
    fill_in "Screen type", with: @booking_ticket.screen_type
    fill_in "Seat type", with: @booking_ticket.seat_type
    fill_in "Ticket number", with: @booking_ticket.ticket_number
    click_on "Update Booking ticket"

    assert_text "Booking ticket was successfully updated"
    click_on "Back"
  end

  test "should destroy Booking ticket" do
    visit booking_ticket_url(@booking_ticket)
    click_on "Destroy this booking ticket", match: :first

    assert_text "Booking ticket was successfully destroyed"
  end
end
