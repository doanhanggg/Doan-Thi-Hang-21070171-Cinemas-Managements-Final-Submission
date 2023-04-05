require "test_helper"

class BookingTicketsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @booking_ticket = booking_tickets(:one)
  end

  test "should get index" do
    get booking_tickets_url
    assert_response :success
  end

  test "should get new" do
    get new_booking_ticket_url
    assert_response :success
  end

  test "should create booking_ticket" do
    assert_difference("BookingTicket.count") do
      post booking_tickets_url, params: { booking_ticket: { add_popcorn_combo: @booking_ticket.add_popcorn_combo, position: @booking_ticket.position, screen_type: @booking_ticket.screen_type, seat_type: @booking_ticket.seat_type, ticket_number: @booking_ticket.ticket_number } }
    end

    assert_redirected_to booking_ticket_url(BookingTicket.last)
  end

  test "should show booking_ticket" do
    get booking_ticket_url(@booking_ticket)
    assert_response :success
  end

  test "should get edit" do
    get edit_booking_ticket_url(@booking_ticket)
    assert_response :success
  end

  test "should update booking_ticket" do
    patch booking_ticket_url(@booking_ticket), params: { booking_ticket: { add_popcorn_combo: @booking_ticket.add_popcorn_combo, position: @booking_ticket.position, screen_type: @booking_ticket.screen_type, seat_type: @booking_ticket.seat_type, ticket_number: @booking_ticket.ticket_number } }
    assert_redirected_to booking_ticket_url(@booking_ticket)
  end

  test "should destroy booking_ticket" do
    assert_difference("BookingTicket.count", -1) do
      delete booking_ticket_url(@booking_ticket)
    end

    assert_redirected_to booking_tickets_url
  end
end
