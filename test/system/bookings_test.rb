require "application_system_test_case"

class BookingsTest < ApplicationSystemTestCase
  setup do
    @booking = bookings(:one)
  end

  test "visiting the index" do
    visit bookings_url
    assert_selector "h1", text: "Bookings"
  end

  test "should create booking" do
    visit bookings_url
    click_on "New booking"

    fill_in "Add popcorn combo", with: @booking.add_popcorn_combo
    fill_in "Name movie", with: @booking.name_movie
    fill_in "Position", with: @booking.position
    fill_in "Screen type", with: @booking.screen_type
    fill_in "Seat type", with: @booking.seat_type
    fill_in "Ticket number", with: @booking.ticket_number
    click_on "Create Booking"

    assert_text "Booking was successfully created"
    click_on "Back"
  end

  test "should update Booking" do
    visit booking_url(@booking)
    click_on "Edit this booking", match: :first

    fill_in "Add popcorn combo", with: @booking.add_popcorn_combo
    fill_in "Name movie", with: @booking.name_movie
    fill_in "Position", with: @booking.position
    fill_in "Screen type", with: @booking.screen_type
    fill_in "Seat type", with: @booking.seat_type
    fill_in "Ticket number", with: @booking.ticket_number
    click_on "Update Booking"

    assert_text "Booking was successfully updated"
    click_on "Back"
  end

  test "should destroy Booking" do
    visit booking_url(@booking)
    click_on "Destroy this booking", match: :first

    assert_text "Booking was successfully destroyed"
  end
end
