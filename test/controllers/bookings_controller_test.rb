require "test_helper"

class BookingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @booking = bookings(:one)
  end

  test "should get index" do
    get bookings_url
    assert_response :success
  end

  test "should get new" do
    get new_booking_url
    assert_response :success
  end

  test "should create booking" do
    assert_difference("Booking.count") do
      post bookings_url, params: { booking: { add_popcorn_combo: @booking.add_popcorn_combo, id_customer: @booking.id_customer, name_cinemas: @booking.name_cinemas, name_movie: @booking.name_movie, position: @booking.position, price_ticket: @booking.price_ticket, screen_type: @booking.screen_type, seat_type: @booking.seat_type, showtime: @booking.showtime, ticket_number: @booking.ticket_number } }
    end

    assert_redirected_to booking_url(Booking.last)
  end

  test "should show booking" do
    get booking_url(@booking)
    assert_response :success
  end

  test "should get edit" do
    get edit_booking_url(@booking)
    assert_response :success
  end

  test "should update booking" do
    patch booking_url(@booking), params: { booking: { add_popcorn_combo: @booking.add_popcorn_combo, id_customer: @booking.id_customer, name_cinemas: @booking.name_cinemas, name_movie: @booking.name_movie, position: @booking.position, price_ticket: @booking.price_ticket, screen_type: @booking.screen_type, seat_type: @booking.seat_type, showtime: @booking.showtime, ticket_number: @booking.ticket_number } }
    assert_redirected_to booking_url(@booking)
  end

  test "should destroy booking" do
    assert_difference("Booking.count", -1) do
      delete booking_url(@booking)
    end

    assert_redirected_to bookings_url
  end
end
