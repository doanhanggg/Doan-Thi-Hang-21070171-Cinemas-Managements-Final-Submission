require "application_system_test_case"

class TicketsTest < ApplicationSystemTestCase
  setup do
    @ticket = tickets(:one)
  end

  test "visiting the index" do
    visit tickets_url
    assert_selector "h1", text: "Tickets"
  end

  test "should create ticket" do
    visit tickets_url
    click_on "New ticket"

    fill_in "Name cinemas", with: @ticket.name_cinemas
    fill_in "Name movie", with: @ticket.name_movie
    fill_in "Price ticket", with: @ticket.price_ticket
    fill_in "Screen", with: @ticket.screen
    fill_in "Seat", with: @ticket.seat
    fill_in "Showtime", with: @ticket.showtime
    click_on "Create Ticket"

    assert_text "Ticket was successfully created"
    click_on "Back"
  end

  test "should update Ticket" do
    visit ticket_url(@ticket)
    click_on "Edit this ticket", match: :first

    fill_in "Name cinemas", with: @ticket.name_cinemas
    fill_in "Name movie", with: @ticket.name_movie
    fill_in "Price ticket", with: @ticket.price_ticket
    fill_in "Screen", with: @ticket.screen
    fill_in "Seat", with: @ticket.seat
    fill_in "Showtime", with: @ticket.showtime
    click_on "Update Ticket"

    assert_text "Ticket was successfully updated"
    click_on "Back"
  end

  test "should destroy Ticket" do
    visit ticket_url(@ticket)
    click_on "Destroy this ticket", match: :first

    assert_text "Ticket was successfully destroyed"
  end
end
